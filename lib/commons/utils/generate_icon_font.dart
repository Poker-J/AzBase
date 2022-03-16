import 'dart:io';
import 'package:xml_parser/xml_parser.dart';
import 'package:dio/dio.dart';
final Dio dio = Dio();

final Map<String, dynamic> config = {
  'default_size': 18,
  'default_color': '#000',
  'output': 'lib/commons/configs/iconfont.dart',
  'symbols': [
    {
      'prefix': 'az_nav_bar',
      'url': 'https://at.alicdn.com/t/font_2878676_52e5nukn765.js',
    },
    {
      'prefix': 'az',
      'url': 'https://at.alicdn.com/t/font_2881433_pcy9p1duy2.js',
    },
    {
      'prefix': 'lxq',
      'url': 'https://at.alicdn.com/t/font_2917362_b8a9vl0peka.js',
    },
  ]
};

String tpl = '''import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  // ignore: constant_identifier_names
  ##names##
}

class IconFont extends StatelessWidget {
  const IconFont(this.iconName, {Key key, this.size, this.color, this.colors}) : super(key: key);

  final dynamic iconName;
  final String color;
  final List<String> colors;
  final double size;

  static IconNames getIconNames(dynamic iconName) {
    switch (iconName) {
##convertCases##
    }
    return iconName;
  }

  static String getColor(int index, String color, List<String> colors, String defaultColor) {
    String currColor = defaultColor;

    if (color != null && color.isNotEmpty) {
      currColor = color;
    } else if (colors != null && colors.isNotEmpty && colors.length > index) {
      currColor = colors.elementAt(index);
    }

    if (currColor.length == 9 && currColor.startsWith('#')) {
      currColor = '#' + currColor.substring(3, 9);
    }

    return currColor;
  }

  static double getOpacity(int index, String color, List<String> colors, String defaultColor, num defaultAlpha) {
    String currColor = defaultColor;

    if (color != null && color.isNotEmpty) {
      currColor = color;
    } else if (colors != null && colors.isNotEmpty && colors.length > index) {
      currColor = colors.elementAt(index);
    }

    if (currColor.startsWith('#') && currColor.length == 9) {
      return int.parse(currColor.substring(1, 3), radix: 16) / 255;
    }

    return defaultAlpha ?? 1;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (getIconNames(iconName)) {
##cases##
    }

    return SvgPicture.string(svgXml, width: size ?? ${config["default_size"]}, height: size ?? ${config["default_size"]});
  }
}
''';

String whitespace(int indent) {
  return List.filled(indent, '  ').join('');
}

String generateCase(XmlElement item, {int baseIdent = 5}) {
  String template = '\n${whitespace(baseIdent)}<svg viewBox="${item.getAttribute('viewBox')}" xmlns="http://www.w3.org/2000/svg">\n';
  item.children.asMap().forEach((index, e) {
    final ele = e as XmlElement;
    template += '${whitespace(baseIdent + 1)}<${ele.name}';
    ele.attributes.forEach((attrEle) {
      final List<String> attr = attrEle.toString().split('=');
      if (attr[0] == 'fill') {
        template += "\n${whitespace(baseIdent + 2)}${attr[0]}=\"\${getColor($index, color, colors, ${attr[1]})}\"";
      } else {
        template += "\n${whitespace(baseIdent + 2)}${attr[0]}=${attr[1]}";
      }
    });
    if (!ele.hasAttribute('fill')) {
      template += "\n${whitespace(baseIdent + 2)}fill=\"\${getColor($index, color, colors, '${config['default_color']}')}\"";
    }
    template += "\n${whitespace(baseIdent + 2)}fill-opacity=\"\${getOpacity($index, color, colors, '${config['default_color']}', ${ele.getAttribute('fill-opacity')})}\"";
    template += '\n${whitespace(baseIdent + 1)}/>\n';
  });
  template += '${whitespace(baseIdent)}</svg>\n';
  return template;
}

XmlDocument getXmlDocument(String str) {
  const String start = '<svg>';
  const String end = '</svg>';
  final startIndex = str.indexOf(start);
  final endIndex = str.indexOf(end);
  return XmlDocument.from(str.substring(startIndex, endIndex + end.length));
}

IconFontModel getResult(XmlDocument document, {String prefix = ''}) {
  IconFontModel result = IconFontModel.fromJson({"names": "", "cases": "", "convertCases": ""});

  document.getElements('symbol').forEach((item) {
    String iconName = item.id.toString().replaceAll('-', '_');
    if (prefix.isNotEmpty) {
      iconName = '${prefix}_$iconName';
    }
    result.names += '$iconName, ';
    result.cases += '${whitespace(3)}case IconNames.$iconName:\n';
    result.cases += "${whitespace(4)}svgXml = '''${generateCase(item)}${whitespace(4)}''';\n";
    result.cases += '${whitespace(4)}break;\n';

    result.convertCases += "${whitespace(3)}case '$iconName':\n";
    result.convertCases += '${whitespace(4)}iconName = IconNames.$iconName;\n';
    result.convertCases += '${whitespace(4)}break;\n';
  });
  return result;
}

void main() async {
  final symbols = config['symbols'] as List<dynamic>;
  final gets = symbols.map((symbol) {
    return dio.get((symbol as Map<String, dynamic>)["url"]);
  });

  String names = '';
  String cases = '';
  String convertCases = '';

  await Future.wait(gets).then((values) {
    values.asMap().forEach((index, value) {
      final String prefix = config['symbols'][index]['prefix'].replaceAll('-', '_');
      final XmlDocument document = getXmlDocument(value.toString());
      IconFontModel result = getResult(document, prefix: prefix);
      names += result.names;
      cases += result.cases;
      convertCases += result.convertCases;
    });
  });

  tpl = tpl.replaceAll('##names##', names);
  tpl = tpl.replaceAll('##cases##', cases);
  tpl = tpl.replaceAll('##convertCases##', convertCases);

  File.fromUri(Uri.parse('${Uri.base}${config["output"]}')).writeAsStringSync(tpl);
}

class IconFontModel {
  String names;
  String cases;
  String convertCases;

  IconFontModel({this.names, this.cases, this.convertCases});

  IconFontModel.fromJson(Map<String, dynamic> json) {
    names = json['names'];
    cases = json['cases'];
    convertCases = json['convertCases'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['names'] = names;
    data['cases'] = cases;
    data['convertCases'] = convertCases;
    return data;
  }
}
