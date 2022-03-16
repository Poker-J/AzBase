import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  // ignore: constant_identifier_names
  az_nav_bar_message_fill, az_nav_bar_unit, az_nav_bar_caomei, az_nav_bar_ps, az_nav_bar_unit_fill, az_nav_bar_work, az_nav_bar_work_fill, az_nav_bar_party, az_nav_bar_party_fill, az_nav_bar_home, az_nav_bar_home_fill, az_nav_bar_my_fill, az_nav_bar_my, az_nav_bar_message, az_nav_bar_college_fill, az_nav_bar_service_fill, az_nav_bar_college, az_nav_bar_service, az_close, az_search, az_scan, az_message, az_list, az_flashlight, az_arrow_left, az_arrow_right, az_arrow_down, az_arrow_up, lxq_add_group_chat, lxq_invite, lxq_org_sub_tree, lxq_bar_my, lxq_structure, lxq_del, lxq_live_back, lxq_checked, lxq_circle, lxq_group_info_edit, lxq_group_user_remove, lxq_group_user_add, lxq_icon_phone, lxq_user_add, lxq_message, lxq_video_call, lxq_contact, lxq_sweep, lxq_video_comment, lxq_video_like, lxq_video_share, lxq_message_o, lxq_chat_more, lxq_task_redact, lxq_task_cancel, lxq_trigon_up_radius, lxq_remind, lxq_arrow_radius_up, lxq_playfill, lxq_trigon_up, lxq_fenxiang, lxq_shouchang, lxq_laba, lxq_play, lxq_setting, lxq_qr_code, lxq_history, lxq_vpn, lxq_id_card, lxq_community, lxq_link, lxq_right, lxq_like, lxq_share, lxq_heart_plus, lxq_heart, lxq_clock, lxq_map, lxq_voice_call, lxq_time, lxq_mass, lxq_address_fill, lxq_camera, lxq_star, lxq_picture, lxq_calendar, lxq_business_card, lxq_plus, lxq_arrows_down, lxq_search, lxq_comment, lxq_collection, lxq_examination, lxq_train, lxq_first, lxq_second, lxq_third, lxq_live, lxq_arrow_right, lxq_arrow_down, lxq_arrow_up, lxq_arrow_left,
}

class IconFont extends StatelessWidget {
  const IconFont(this.iconName, {Key key, this.size, this.color, this.colors}) : super(key: key);

  final dynamic iconName;
  final String color;
  final List<String> colors;
  final double size;

  static IconNames getIconNames(dynamic iconName) {
    switch (iconName) {
      case 'az_nav_bar_message_fill':
        iconName = IconNames.az_nav_bar_message_fill;
        break;
      case 'az_nav_bar_unit':
        iconName = IconNames.az_nav_bar_unit;
        break;
      case 'az_nav_bar_caomei':
        iconName = IconNames.az_nav_bar_caomei;
        break;
      case 'az_nav_bar_ps':
        iconName = IconNames.az_nav_bar_ps;
        break;
      case 'az_nav_bar_unit_fill':
        iconName = IconNames.az_nav_bar_unit_fill;
        break;
      case 'az_nav_bar_work':
        iconName = IconNames.az_nav_bar_work;
        break;
      case 'az_nav_bar_work_fill':
        iconName = IconNames.az_nav_bar_work_fill;
        break;
      case 'az_nav_bar_party':
        iconName = IconNames.az_nav_bar_party;
        break;
      case 'az_nav_bar_party_fill':
        iconName = IconNames.az_nav_bar_party_fill;
        break;
      case 'az_nav_bar_home':
        iconName = IconNames.az_nav_bar_home;
        break;
      case 'az_nav_bar_home_fill':
        iconName = IconNames.az_nav_bar_home_fill;
        break;
      case 'az_nav_bar_my_fill':
        iconName = IconNames.az_nav_bar_my_fill;
        break;
      case 'az_nav_bar_my':
        iconName = IconNames.az_nav_bar_my;
        break;
      case 'az_nav_bar_message':
        iconName = IconNames.az_nav_bar_message;
        break;
      case 'az_nav_bar_college_fill':
        iconName = IconNames.az_nav_bar_college_fill;
        break;
      case 'az_nav_bar_service_fill':
        iconName = IconNames.az_nav_bar_service_fill;
        break;
      case 'az_nav_bar_college':
        iconName = IconNames.az_nav_bar_college;
        break;
      case 'az_nav_bar_service':
        iconName = IconNames.az_nav_bar_service;
        break;
      case 'az_close':
        iconName = IconNames.az_close;
        break;
      case 'az_search':
        iconName = IconNames.az_search;
        break;
      case 'az_scan':
        iconName = IconNames.az_scan;
        break;
      case 'az_message':
        iconName = IconNames.az_message;
        break;
      case 'az_list':
        iconName = IconNames.az_list;
        break;
      case 'az_flashlight':
        iconName = IconNames.az_flashlight;
        break;
      case 'az_arrow_left':
        iconName = IconNames.az_arrow_left;
        break;
      case 'az_arrow_right':
        iconName = IconNames.az_arrow_right;
        break;
      case 'az_arrow_down':
        iconName = IconNames.az_arrow_down;
        break;
      case 'az_arrow_up':
        iconName = IconNames.az_arrow_up;
        break;
      case 'lxq_add_group_chat':
        iconName = IconNames.lxq_add_group_chat;
        break;
      case 'lxq_invite':
        iconName = IconNames.lxq_invite;
        break;
      case 'lxq_org_sub_tree':
        iconName = IconNames.lxq_org_sub_tree;
        break;
      case 'lxq_bar_my':
        iconName = IconNames.lxq_bar_my;
        break;
      case 'lxq_structure':
        iconName = IconNames.lxq_structure;
        break;
      case 'lxq_del':
        iconName = IconNames.lxq_del;
        break;
      case 'lxq_live_back':
        iconName = IconNames.lxq_live_back;
        break;
      case 'lxq_checked':
        iconName = IconNames.lxq_checked;
        break;
      case 'lxq_circle':
        iconName = IconNames.lxq_circle;
        break;
      case 'lxq_group_info_edit':
        iconName = IconNames.lxq_group_info_edit;
        break;
      case 'lxq_group_user_remove':
        iconName = IconNames.lxq_group_user_remove;
        break;
      case 'lxq_group_user_add':
        iconName = IconNames.lxq_group_user_add;
        break;
      case 'lxq_icon_phone':
        iconName = IconNames.lxq_icon_phone;
        break;
      case 'lxq_user_add':
        iconName = IconNames.lxq_user_add;
        break;
      case 'lxq_message':
        iconName = IconNames.lxq_message;
        break;
      case 'lxq_video_call':
        iconName = IconNames.lxq_video_call;
        break;
      case 'lxq_contact':
        iconName = IconNames.lxq_contact;
        break;
      case 'lxq_sweep':
        iconName = IconNames.lxq_sweep;
        break;
      case 'lxq_video_comment':
        iconName = IconNames.lxq_video_comment;
        break;
      case 'lxq_video_like':
        iconName = IconNames.lxq_video_like;
        break;
      case 'lxq_video_share':
        iconName = IconNames.lxq_video_share;
        break;
      case 'lxq_message_o':
        iconName = IconNames.lxq_message_o;
        break;
      case 'lxq_chat_more':
        iconName = IconNames.lxq_chat_more;
        break;
      case 'lxq_task_redact':
        iconName = IconNames.lxq_task_redact;
        break;
      case 'lxq_task_cancel':
        iconName = IconNames.lxq_task_cancel;
        break;
      case 'lxq_trigon_up_radius':
        iconName = IconNames.lxq_trigon_up_radius;
        break;
      case 'lxq_remind':
        iconName = IconNames.lxq_remind;
        break;
      case 'lxq_arrow_radius_up':
        iconName = IconNames.lxq_arrow_radius_up;
        break;
      case 'lxq_playfill':
        iconName = IconNames.lxq_playfill;
        break;
      case 'lxq_trigon_up':
        iconName = IconNames.lxq_trigon_up;
        break;
      case 'lxq_fenxiang':
        iconName = IconNames.lxq_fenxiang;
        break;
      case 'lxq_shouchang':
        iconName = IconNames.lxq_shouchang;
        break;
      case 'lxq_laba':
        iconName = IconNames.lxq_laba;
        break;
      case 'lxq_play':
        iconName = IconNames.lxq_play;
        break;
      case 'lxq_setting':
        iconName = IconNames.lxq_setting;
        break;
      case 'lxq_qr_code':
        iconName = IconNames.lxq_qr_code;
        break;
      case 'lxq_history':
        iconName = IconNames.lxq_history;
        break;
      case 'lxq_vpn':
        iconName = IconNames.lxq_vpn;
        break;
      case 'lxq_id_card':
        iconName = IconNames.lxq_id_card;
        break;
      case 'lxq_community':
        iconName = IconNames.lxq_community;
        break;
      case 'lxq_link':
        iconName = IconNames.lxq_link;
        break;
      case 'lxq_right':
        iconName = IconNames.lxq_right;
        break;
      case 'lxq_like':
        iconName = IconNames.lxq_like;
        break;
      case 'lxq_share':
        iconName = IconNames.lxq_share;
        break;
      case 'lxq_heart_plus':
        iconName = IconNames.lxq_heart_plus;
        break;
      case 'lxq_heart':
        iconName = IconNames.lxq_heart;
        break;
      case 'lxq_clock':
        iconName = IconNames.lxq_clock;
        break;
      case 'lxq_map':
        iconName = IconNames.lxq_map;
        break;
      case 'lxq_voice_call':
        iconName = IconNames.lxq_voice_call;
        break;
      case 'lxq_time':
        iconName = IconNames.lxq_time;
        break;
      case 'lxq_mass':
        iconName = IconNames.lxq_mass;
        break;
      case 'lxq_address_fill':
        iconName = IconNames.lxq_address_fill;
        break;
      case 'lxq_camera':
        iconName = IconNames.lxq_camera;
        break;
      case 'lxq_star':
        iconName = IconNames.lxq_star;
        break;
      case 'lxq_picture':
        iconName = IconNames.lxq_picture;
        break;
      case 'lxq_calendar':
        iconName = IconNames.lxq_calendar;
        break;
      case 'lxq_business_card':
        iconName = IconNames.lxq_business_card;
        break;
      case 'lxq_plus':
        iconName = IconNames.lxq_plus;
        break;
      case 'lxq_arrows_down':
        iconName = IconNames.lxq_arrows_down;
        break;
      case 'lxq_search':
        iconName = IconNames.lxq_search;
        break;
      case 'lxq_comment':
        iconName = IconNames.lxq_comment;
        break;
      case 'lxq_collection':
        iconName = IconNames.lxq_collection;
        break;
      case 'lxq_examination':
        iconName = IconNames.lxq_examination;
        break;
      case 'lxq_train':
        iconName = IconNames.lxq_train;
        break;
      case 'lxq_first':
        iconName = IconNames.lxq_first;
        break;
      case 'lxq_second':
        iconName = IconNames.lxq_second;
        break;
      case 'lxq_third':
        iconName = IconNames.lxq_third;
        break;
      case 'lxq_live':
        iconName = IconNames.lxq_live;
        break;
      case 'lxq_arrow_right':
        iconName = IconNames.lxq_arrow_right;
        break;
      case 'lxq_arrow_down':
        iconName = IconNames.lxq_arrow_down;
        break;
      case 'lxq_arrow_up':
        iconName = IconNames.lxq_arrow_up;
        break;
      case 'lxq_arrow_left':
        iconName = IconNames.lxq_arrow_left;
        break;

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
      case IconNames.az_nav_bar_message_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M825.856 96.768H197.632c-74.24 0-134.656 60.416-134.656 134.656v448.512c0 74.24 60.416 134.656 134.656 134.656h218.112L512 926.72l96.256-112.128h218.112c74.24 0 134.656-60.416 134.656-134.656V231.424c-0.512-74.24-60.928-134.656-135.168-134.656zM367.616 454.656c0 39.424-31.744 71.168-71.168 71.168S225.28 494.08 225.28 454.656s31.744-71.168 71.168-71.168c39.424 0.512 71.168 32.256 71.168 71.168z m214.528 0c0 39.424-31.744 71.168-71.168 70.656S440.32 494.08 440.32 454.656C440.32 415.744 472.064 384 511.488 384c38.912 0 70.656 31.744 70.656 70.656z m195.584 50.176c-27.648 27.648-72.704 27.648-100.352 0-27.648-27.648-27.648-72.704 0-100.352 27.648-27.648 72.704-27.648 100.352 0 27.648 27.648 27.648 72.704 0 100.352z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_unit:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M965.12 878.592V455.168c0-62.976-40.448-117.248-103.424-130.56l-257.024-67.584V189.44c0-76.8-58.368-135.168-135.168-135.168-13.312 0-27.136 0-40.448 4.608L158.72 144.384c-58.368 22.528-94.72 76.8-94.72 135.168v603.648c-27.136 0-45.056 17.92-45.056 45.056s17.92 45.056 45.056 45.056h901.12c27.136 0 45.056-17.92 45.056-45.056s-17.92-49.664-45.056-49.664zM154.112 279.552c0-17.92 13.312-35.84 31.744-45.056l270.336-85.504c27.136-9.216 58.368 13.312 58.368 45.056v689.152H154.112V279.552z m450.56 599.04v-522.24L839.168 414.72c17.92 4.608 35.84 22.528 35.84 45.056v423.424h-270.336v-4.608z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M401.92 405.504H266.752c-27.136 0-45.056 17.92-45.056 45.056 0 27.136 17.92 45.056 45.056 45.056h135.168c27.136 0 45.056-17.92 45.056-45.056 0-27.136-17.92-45.056-45.056-45.056z m0 202.752H266.752c-27.136 0-45.056 17.92-45.056 45.056s17.92 45.056 45.056 45.056h135.168c27.136 0 45.056-17.92 45.056-45.056 0-27.136-17.92-45.056-45.056-45.056z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_caomei:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M166.8 446.3C158.2 590.2 285.2 711.2 333 749.6c7.1 5.7 14 11.5 20.5 17.9 34.1 33.3 168.2 154.8 305.7 148.3 34.8-1.7 68.3-14.8 94.3-38 39.1-34.9 90.2-106.3 95.2-242.6 0 0 37.8-353.4-142-461.5 0 0-233.3-151.8-496 159.7-26.5 31.5-41.4 71.2-44 112.3l0.1 0.6z"
              fill="${getColor(0, color, colors, "#EC7771")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M648.3 923c-57 0-118.9-20.3-184.4-60.5-56.2-34.5-99.3-74.5-115.3-90-5.4-5.3-11.6-10.7-20-17.4-29.8-23.9-178.2-151.4-168.8-309.1v-0.6c2.6-43.3 18.8-84.6 45.6-116.4C266 257.2 330.1 204 396 170.9c53-26.6 107.2-40.4 161.2-41 91.1-1 149.5 35.6 153.2 38 42.2 25.4 76.1 66 100.7 120.8 19.5 43.4 33.3 95.7 40.9 155.5 12.6 98.8 4.1 186.2 3.6 191.6-5.1 137-55.8 210-97.5 247.3-26.7 23.8-61.7 38-98.6 39.7-3.7 0.1-7.5 0.2-11.2 0.2zM173.7 446.8c-9 150.9 134.7 274.3 163.6 297.5 8.7 7 15.2 12.7 21 18.3 15.6 15.3 57.9 54.4 112.9 88.1 67.4 41.3 130.5 60.9 187.7 58.2 33.7-1.6 65.7-14.5 90-36.2 39.7-35.4 88-105.4 92.9-237.7v-0.5c0.1-0.9 9.2-88.9-3.6-188.8-7.5-58.4-20.9-109.4-39.8-151.5-23.4-52.1-55.5-90.6-95.2-114.5l-0.2-0.1c-0.6-0.4-58.3-37-146.4-35.8-51.8 0.7-103.9 14.1-154.9 39.8-64 32.3-126.5 84.2-185.6 154.3-24.8 29.4-39.9 67.9-42.3 108.3l-0.1 0.6z"
              fill="${getColor(1, color, colors, "#9E4356")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M374.412718 694.588748a23.4 12.6 51.081 1 0 19.606478-15.831171 23.4 12.6 51.081 1 0-19.606478 15.831171Z"
              fill="${getColor(2, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M409.6118 539.708152a23.4 12.6 51.081 1 0 19.606479-15.831172 23.4 12.6 51.081 1 0-19.606479 15.831172Z"
              fill="${getColor(3, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M621.764248 625.447566a23.4 12.6 51.081 1 0 19.606479-15.831172 23.4 12.6 51.081 1 0-19.606479 15.831172Z"
              fill="${getColor(4, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M642.489256 428.008344a23.4 12.6 51.081 1 0 19.606478-15.831171 23.4 12.6 51.081 1 0-19.606478 15.831171Z"
              fill="${getColor(5, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M769.820088 510.735609a23.4 12.6 51.081 1 0 19.606479-15.831171 23.4 12.6 51.081 1 0-19.606479 15.831171Z"
              fill="${getColor(6, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
            <path
              d="M749.980284 703.736954a23.4 12.6 51.081 1 0 19.606479-15.831172 23.4 12.6 51.081 1 0-19.606479 15.831172Z"
              fill="${getColor(7, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(7, color, colors, '#000', null)}"
            />
            <path
              d="M561.713877 806.130031a23.4 12.6 51.081 1 0 19.606479-15.831172 23.4 12.6 51.081 1 0-19.606479 15.831172Z"
              fill="${getColor(8, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(8, color, colors, '#000', null)}"
            />
            <path
              d="M215.786961 554.797849a23.4 12.6 51.081 1 0 19.606478-15.831172 23.4 12.6 51.081 1 0-19.606478 15.831172Z"
              fill="${getColor(9, color, colors, "#F6C961")}"
              fill-opacity="${getOpacity(9, color, colors, '#000', null)}"
            />
            <path
              d="M528.5 136.3s168.1-13.6 133.6 102.8c0 0-30.6 57.6-103 67.1 0 0 54.4 144.2-41.3 170.9 0 0-76.9 14.6-119.2-66.8 0 0-99 97.3-164.7 34.1 0 0-51-57.1 10.3-150.8 0 0-56.9-45.6-19.4-90s133.4-30.2 133.4-30.2S399.6 92.7 467.7 83s60.8 53.3 60.8 53.3z"
              fill="${getColor(10, color, colors, "#B0C270")}"
              fill-opacity="${getOpacity(10, color, colors, '#000', null)}"
            />
            <path
              d="M503.8 485.1c-8.2 0-19.2-0.9-31.4-4.1-22.3-5.9-52.8-21.1-75.5-59.6-9.7 8.5-29.1 24.1-52.8 35.9-20.6 10.3-40 15.4-57.7 15.4-21.8 0-41.1-7.8-57.2-23.2l-0.4-0.4c-0.6-0.6-14.1-16-19.5-43.6-8.3-42.6 8.7-82.9 25.9-110.6-8.9-8.4-27.4-28.6-29.8-53.4-1.5-15.2 3.3-29.4 14.2-42.3 35-41.4 114.3-35.5 134.9-33.2 4.1-7.2 13.6-22.6 27.8-38.7 25.8-29.2 55-46.9 84.5-51.1 23.3-3.3 41.2 1 53.3 12.7 12.8 12.5 15.4 30 15.7 40.1 23.3-0.8 92.9 0.3 123.5 38 15.3 18.9 18.6 43.8 9.6 74.1-0.1 0.4-0.3 0.9-0.5 1.3-0.3 0.6-8.4 15.6-25.7 31.8-14.8 13.8-39.4 31.1-74.1 37.6 7.2 22.5 24.5 87.1 1.9 131.8-10.2 20.2-27.2 33.7-50.5 40.2-0.2 0.1-0.4 0.1-0.6 0.1-0.7 0.1-6.4 1.2-15.6 1.2z m-105.1-81.7c0.4 0 0.7 0 1.1 0.1 2.2 0.3 4 1.7 5.1 3.6 16.5 31.7 40.2 52 70.5 60.2 21.4 5.8 38.7 3.3 41 2.9 19.2-5.4 33.2-16.5 41.5-33 24.6-48.4-4.9-127.8-5.2-128.6-0.7-2-0.5-4.2 0.5-6 1.1-1.8 2.9-3 5-3.3 64.3-8.4 94.1-57.1 97.4-62.9 7.3-25.3 4.9-45.7-7.3-60.7-31.7-39.1-118.5-32.6-119.4-32.5-2.1 0.2-4.1-0.6-5.5-2.1-1.4-1.5-2.1-3.5-1.9-5.6 0-0.4 2.3-23.5-11.4-36.8-8.8-8.6-22.8-11.6-41.6-8.9-18.2 2.6-46.1 12.7-75.8 46.3-18.1 20.5-28.3 40.2-28.4 40.4-1.4 2.6-4.2 4.1-7.2 3.7-0.9-0.1-92.6-13-127.1 27.9-8.5 10.1-12.1 20.5-11 32 2.6 26.3 29.1 47.9 29.4 48.1 2.8 2.2 3.4 6.2 1.5 9.2-23.8 36.5-33.3 72.6-27.3 104.6 4.2 22.6 14.9 36 16.2 37.6 24.8 23.7 58 25.5 98.6 5.3 31.7-15.7 56-39.4 56.2-39.6 1.5-1.2 3.3-1.9 5.1-1.9z"
              fill="${getColor(11, color, colors, "#7A7132")}"
              fill-opacity="${getOpacity(11, color, colors, '#000', null)}"
            />
            <path
              d="M424 235.5S339.9 107.1 296.9 85.7c0 0-26.1 7.4 16.6 58.7s85.2 104.9 85.2 104.9 19.8 12.8 25.3-13.8z"
              fill="${getColor(12, color, colors, "#B0C270")}"
              fill-opacity="${getOpacity(12, color, colors, '#000', null)}"
            />
            <path
              d="M408.9 259.3c-7.2 0-13.1-3.6-14-4.2-0.6-0.4-1.2-0.9-1.7-1.5-0.4-0.5-43-54-85.1-104.8-21-25.3-29.2-44.1-25-57.5 3-9.6 11-12.1 11.9-12.4 1.7-0.5 3.4-0.3 5 0.5 44.2 21.9 126.4 146.9 129.9 152.2 1 1.5 1.4 3.4 1 5.2-2.3 10.9-7.1 17.9-14.2 20.9-2.7 1.2-5.3 1.6-7.8 1.6z m-5.6-15.3c1.8 0.9 5.4 2.2 8 1.1 2.2-0.9 4.1-3.8 5.3-8.2-11.6-17.4-80.9-120-119.4-143-0.4 0.5-0.7 1.2-0.9 2-1 3.9-0.9 16 22.6 44.2 38.8 46.8 78.2 96.1 84.4 103.9z"
              fill="${getColor(13, color, colors, "#7A7132")}"
              fill-opacity="${getOpacity(13, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_ps:
        svgXml = '''
          <svg viewBox="0 0 1030 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M513.90451 0.306548C231.945783 0.306548 3.026344 229.225987 3.026344 511.184713c0 281.958726 228.919439 510.871643 510.878166 510.871644 281.958726 0 510.871643-228.912917 510.871643-510.871644S795.863236 0.306548 513.90451 0.306548z m0 21.745325c269.957707 0 489.132841 219.168611 489.13284 489.13284 0 269.957707-219.175134 489.132841-489.13284 489.132841-269.964229 0-489.132841-219.175134-489.132841-489.132841 0-269.964229 219.168611-489.132841 489.132841-489.13284z"
              fill="${getColor(0, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M93.229656 354.082242c32.383185-87.098701 90.901197-161.524586 165.998879-213.735541a10.872662 10.872662 0 0 0-12.405401-17.851516c-78.711032 54.722038-140.033631 132.728662-173.969121 224.008153a10.872662 10.872662 0 0 0 20.375643 7.578904zM306.893452 110.083261a447.990217 447.990217 0 0 1 92.603516-35.592153 10.872662 10.872662 0 0 0-5.498293-21.027872 469.748586 469.748586 0 0 0-97.103898 37.314038 10.872662 10.872662 0 1 0 9.998675 19.305987z"
              fill="${getColor(1, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M496.059516 538.076127c190.783592 0 176.310624-96.725605 309.293656 0 48.956331 35.605197 170.760153-91.214268 170.760153-26.891414 0 255.099924-207.108892 462.208815-462.208815 462.208816-255.099924 0-462.208815-207.108892-462.208816-462.208816 0-105.348076 65.627312-14.812127 136.407236-82.422216 140.653248-134.339669 158.204739 109.313631 307.956586 109.31363z"
              fill="${getColor(2, color, colors, "#35A6F1")}"
              fill-opacity=".3"
              fill-opacity="${getOpacity(2, color, colors, '#000', .3)}"
            />
            <path
              d="M254.43465 696.522191h74.654165V562.215134h50.006421c80.302471 0 144.370955-38.76851 144.370955-125.078013 0-89.368459-63.559745-118.444841-146.386344-118.444841H254.43465v377.829911z m74.654165-193.986038V378.377783h42.434039c51.519592 0 78.795822 14.81865 78.795821 58.759338 0 43.425427-24.752102 65.399032-76.271694 65.399032h-44.958166zM660.806115 703.670624c73.728 0 112.568255-40.294726 112.568254-90.333758 0-53.124076-41.364382-72.025682-78.704509-86.32907-29.819924-11.237911-57.611414-18.901605-57.611414-39.844688 0-16.351389 12.124943-27.589299 37.392306-27.589299 21.230064 0 40.914344 10.220433 61.087796 24.523822l33.296306-45.440816c-23.708535-17.851516-54.98293-35.194293-96.399491-35.194293-63.624968 0-104.982828 36.218293-104.982828 87.783542 0 47.508382 41.35786 69.475465 77.184815 83.270114 29.813401 11.74665 59.124586 21.451822 59.124586 42.910166 0 17.877605-12.633682 30.139516-40.933911 30.139516-26.271796 0-50.482548-11.237911-75.704254-31.163516l-33.811567 46.973554c27.758879 23.46721 69.625478 40.294726 107.493911 40.294726z"
              fill="${getColor(3, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M735.473325 298.86451m-15.920917 0a15.920917 15.920917 0 1 0 31.841834 0 15.920917 15.920917 0 1 0-31.841834 0Z"
              fill="${getColor(4, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M719.552408 168.353427a31.026548 31.026548 0 0 0-31.006981 31.013503 31.026548 31.026548 0 0 0 31.006981 31.006981 31.026548 31.026548 0 0 0 31.006981-31.006981 31.026548 31.026548 0 0 0-31.006981-31.013503z m0 10.872662a20.140841 20.140841 0 0 1 0 40.275159 20.147363 20.147363 0 0 1-20.140841-20.134318 20.153885 20.153885 0 0 1 20.140841-20.140841zM835.147006 301.838675a43.516739 43.516739 0 0 0-43.497172 43.497172 43.523261 43.523261 0 0 0 43.497172 43.497172 43.516739 43.516739 0 0 0 43.497172-43.497172 43.516739 43.516739 0 0 0-43.497172-43.497172z m0 10.86614a32.650599 32.650599 0 0 1 32.631032 32.631032 32.644076 32.644076 0 0 1-32.631032 32.62451 32.637554 32.637554 0 0 1-32.624509-32.62451 32.644076 32.644076 0 0 1 32.624509-32.631032zM801.531108 227.523669h-8.56377a3.685096 3.685096 0 0 0 0 7.357146h8.56377v8.563771a3.685096 3.685096 0 0 0 7.357147 0v-8.563771h8.56377a3.678573 3.678573 0 1 0 0-7.357146h-8.56377v-8.563771a3.678573 3.678573 0 1 0-7.357147 0v8.563771z"
              fill="${getColor(5, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M658.57549 263.350624H650.01172a3.672051 3.672051 0 1 0 0 7.350624h8.56377v8.563771a3.672051 3.672051 0 1 0 7.357147 0v-8.563771h8.563771a3.678573 3.678573 0 1 0 0-7.350624h-8.563771v-8.56377a3.678573 3.678573 0 1 0-7.357147 0v8.56377z"
              fill="${getColor(6, color, colors, "#35A6F1")}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_unit_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M916.864 971.264H759.552V466.304h157.312c22.656 0 40.96 18.304 40.96 40.96v423.04c0 22.656-18.304 40.96-40.96 40.96z m0 0"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M677.632 53.76H147.2c-45.312 0-81.92 36.608-81.92 81.92v753.664c0 45.312 36.608 81.92 81.92 81.92h612.352V135.68c0-45.312-36.608-81.92-81.92-81.92zM222.208 499.2c0-22.656 18.304-40.96 40.96-40.96h225.28c22.656 0 40.96 18.304 40.96 40.96s-18.304 40.96-40.96 40.96h-225.28c-22.656 0-40.96-18.432-40.96-40.96z m389.12 188.416c0 22.656-18.304 40.96-40.96 40.96h-307.2c-22.656 0-40.96-18.304-40.96-40.96s18.304-40.96 40.96-40.96h307.2c22.528 0 40.96 18.304 40.96 40.96z m0-376.832c0 22.656-18.304 40.96-40.96 40.96h-307.2c-22.656 0-40.96-18.304-40.96-40.96s18.304-40.96 40.96-40.96h307.2c22.528 0 40.96 18.304 40.96 40.96z m0 0"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_work:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M861.8 246.1h-75.11v-49.38c0-66.02-53.71-119.73-119.73-119.73H362.11c-66.02 0-119.73 53.71-119.73 119.73v49.38h-81.71c-53.41 0-96.71 43.3-96.71 96.71v507.71c0 53.41 43.3 96.71 96.71 96.71H861.8c53.41 0 96.71-43.3 96.71-96.71V342.8c0-53.41-43.3-96.7-96.71-96.7z m-523.42-49.38c0-13.08 10.64-23.73 23.73-23.73h304.85c13.08 0 23.73 10.64 23.73 23.73v49.38h-352.3v-49.38z m-178.4 145.84c0.05-0.14 0.31-0.4 0.44-0.45 0 0 0.07-0.02 0.25-0.02H861.8c0.17 0 0.24 0.02 0.24 0.02 0.14 0.05 0.4 0.31 0.45 0.44 0 0 0.02 0.07 0.02 0.25v169.72H750.07v-24.18c0-26.7-21.65-48.35-48.35-48.35-26.71 0-48.35 21.65-48.35 48.35v24.18h-314.3v-24.18c0-26.7-21.65-48.35-48.35-48.35-26.71 0-48.35 21.65-48.35 48.35v24.18h-82.39V342.8c-0.01-0.17 0-0.24 0-0.24z m702.51 508.2c-0.05 0.14-0.31 0.4-0.44 0.45 0 0-0.07 0.02-0.25 0.02H160.67c-0.17 0-0.24-0.02-0.25-0.02-0.14-0.05-0.39-0.31-0.44-0.44 0 0-0.02-0.07-0.02-0.25V609.23h82.39v24.18c0 26.71 21.65 48.36 48.35 48.36 26.7 0 48.35-21.65 48.35-48.36v-24.18h314.3v24.18c0 26.71 21.65 48.36 48.35 48.36 26.71 0 48.35-21.65 48.35-48.36v-24.18h112.44v241.29c0.02 0.17 0 0.24 0 0.24z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_work_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M861.8 246.1h-75.11v-49.38c0-66.02-53.71-119.73-119.73-119.73H362.11c-66.02 0-119.73 53.71-119.73 119.73v49.38h-81.71c-53.41 0-96.71 43.3-96.71 96.71v507.71c0 53.41 43.3 96.71 96.71 96.71H861.8c53.41 0 96.71-43.3 96.71-96.71V342.8c0-53.41-43.3-96.7-96.71-96.7z m-523.42-49.38c0-13.08 10.64-23.73 23.73-23.73h304.85c13.08 0 23.73 10.64 23.73 23.73v49.38h-352.3v-49.38z m556.75 412.51H750.07v24.18c0 26.71-21.65 48.36-48.35 48.36-26.71 0-48.35-21.65-48.35-48.36v-24.18h-314.3v24.18c0 26.71-21.65 48.36-48.35 48.36-26.71 0-48.35-21.65-48.35-48.36v-24.18h-120.9v-96.71h120.88v-24.18c0-26.7 21.65-48.35 48.35-48.35 26.7 0 48.35 21.65 48.35 48.35v24.18h314.3v-24.18c0-26.7 21.65-48.35 48.35-48.35 26.71 0 48.35 21.65 48.35 48.35v24.18h145.06v96.71z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_party:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M728.96932023 681.06810179c-82.70947846 0-126.28456135-17.47791787-164.73061426-32.89803175-34.48627664-13.83186898-64.26973847-25.77827765-127.85319828-25.77827765-69.14283295 0-124.77062031 31.39234669-125.31241925 31.70917007a49.53796725 49.53796725 0 0 1-74.53811842-42.83720434l0.6646067-439.45776568a49.53177526 49.53177526 0 0 1 24.3190325-42.56166087c3.13624188-1.85450038 77.93442378-45.43371126 174.86689847-45.43371126 82.71051046 0 126.28662535 17.47688586 164.73267826 32.89699974 34.48627664 13.83083699 64.26870648 25.77621366 127.85113428 25.77621366h0.05675989c77.36682489 0 160.09694331-41.09415974 160.91015773-41.51005493a49.53796725 49.53796725 0 0 1 72.04481128 44.12720182v439.40513379a49.53590325 49.53590325 0 0 1-26.97642731 44.10036987c-4.18784782 2.14036381-103.7312774 52.46161753-206.03530159 52.46161753zM436.38550769 523.32101788c82.71051046 0 126.28662535 17.47791787 164.73267826 32.89803175 34.48627664 13.83186898 64.26973847 25.77827765 127.85113428 25.77827766 50.45954145 0 103.13375056-17.48101386 133.9388904-29.77726984V218.111742c-37.41302292 12.11875234-85.35758529 23.44286621-133.88213051 23.44286621h-0.05675989c-82.70947846 0-126.28456135-17.47688586-164.73061426-32.89596774-34.48627664-13.83186898-64.26973847-25.77724565-127.85319828-25.77724566-41.24689544 0-77.53400856 11.24155404-100.16159638 20.34687226l-0.50671101 334.91843386c28.25610481-8.19096801 62.82700529-14.82568305 100.66830739-14.82568305zM112.0739491 939.8302444c-27.35826657 0-49.53590325-22.17763668-49.53590324-49.53590326V136.35582968c0-27.35826657 22.17763668-49.53590325 49.53590324-49.53590325s49.53590325 22.17763668 49.53590325 49.53590325v753.93954347c0 27.35723457-22.17763668 49.53487125-49.53590325 49.53487125z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_party_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M728.96932023 681.06810179c-82.70947846 0-126.28456135-17.47791787-164.73061426-32.89803175-34.48627664-13.83186898-64.26973847-25.77827765-127.85319828-25.77827765-69.14283295 0-124.77062031 31.39234669-125.31241925 31.70917007a49.53796725 49.53796725 0 0 1-74.53811842-42.83720434l0.6646067-439.45776568a49.53177526 49.53177526 0 0 1 24.3190325-42.56166087c3.13624188-1.85450038 77.93442378-45.43371126 174.86689847-45.43371126 82.71051046 0 126.28662535 17.47688586 164.73267826 32.89699974 34.48627664 13.83083699 64.26870648 25.77621366 127.85113428 25.77621366h0.05675989c77.36682489 0 160.09694331-41.09415974 160.91015773-41.51005493a49.53796725 49.53796725 0 0 1 72.04481128 44.12720182v439.40513379a49.53590325 49.53590325 0 0 1-26.97642731 44.10036987c-4.18784782 2.14036381-103.7312774 52.46161753-206.03530159 52.46161753zM112.0739491 939.8302444c-27.35826657 0-49.53590325-22.17763668-49.53590324-49.53590326V136.35582968c0-27.35826657 22.17763668-49.53590325 49.53590324-49.53590325s49.53590325 22.17763668 49.53590325 49.53590325v753.93954347c0 27.35723457-22.17763668 49.53487125-49.53590325 49.53487125z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_home:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M475.07 185.42l-0.08 0.09c0.04-0.04 10.21-10.13 10.41-10.31 0.66-0.63 2.48-2.29 5.12-4.04 7.99-5.29 13.93-5.29 15.88-5.29 11.39 0 27.07 7.36 44.26 20.75l312.97 268.26V858.18c0 1.92-1.51 3.43-3.43 3.43h-99.43c-1.92 0-3.43-1.51-3.43-3.43V750l-1.58-8.59-9.12-49.72-1.39-7.58-2.58-7.26C707.92 579.2 615.3 513.59 512.18 513.59S316.44 579.2 281.7 676.85l-2.58 7.26-1.39 7.58-9.12 49.72-1.58 8.59v108.17c0 1.92-1.51 3.43-3.43 3.43h-99.43c-1.92 0-3.43-1.51-3.43-3.43V454.87l314.49-269.56-62.48-72.89m93.65-42.56c-58.92 0-93.66 42.56-93.66 42.56L64.73 410.72V858.17c0 54.91 44.52 99.43 99.43 99.43h99.43c54.91 0 99.43-44.52 99.43-99.43v-99.43l9.12-49.72c20.56-57.8 75.17-99.43 140.03-99.43s119.47 41.64 140.03 99.43l9.12 49.72v99.43c0 54.91 44.52 99.43 99.43 99.43h99.43c54.91 0 99.43-44.52 99.43-99.43V410.72l-348.02-298.3C571.37 80.5 535.87 69.86 506.4 69.86z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_home_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M363.05 758.74v99.43c0 54.91-44.52 99.43-99.43 99.43h-99.43c-54.91 0-99.43-44.52-99.43-99.43V410.73l348.02-298.3s78.15-95.75 198.87 0l348.02 298.3V858.18c0 54.91-44.52 99.43-99.43 99.43h-99.43c-54.91 0-99.43-44.52-99.43-99.43v-99.43l-9.12-49.72c-20.56-57.8-75.17-99.43-140.03-99.43s-119.47 41.64-140.03 99.43l-9.15 49.71z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_my_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M251.17 588.24h524.21c96.5 0 174.74 78.24 174.74 174.74v65.53c0 72.38-58.67 131.05-131.05 131.05H207.49c-72.38 0-131.05-58.67-131.05-131.05v-65.53c0-96.5 78.24-174.74 174.73-174.74z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M529.55 64.04h245.83v251.18c0 138.72-112.46 251.18-251.18 251.18h-5.35c-135.77 0-245.83-110.06-245.83-245.83 0-141.69 114.84-256.53 256.53-256.53z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_my:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M775.38 684.24c43.42 0 78.74 35.32 78.74 78.74v65.53c0 19.33-15.72 35.05-35.05 35.05H207.49c-19.33 0-35.05-15.72-35.05-35.05v-65.53c0-43.42 35.32-78.74 78.74-78.74h524.2m0-96H251.17c-96.5 0-174.74 78.24-174.74 174.74v65.53c0 72.38 58.67 131.05 131.05 131.05h611.58c72.38 0 131.05-58.67 131.05-131.05v-65.53c0.01-96.5-78.23-174.74-174.73-174.74zM679.38 160.04v155.18c0 41.45-16.14 80.42-45.45 109.73-29.31 29.31-68.28 45.45-109.73 45.45h-5.35c-40.02 0-77.65-15.59-105.95-43.88-28.3-28.3-43.88-65.93-43.88-105.95 0-42.88 16.7-83.2 47.02-113.52 30.32-30.32 70.63-47.02 113.52-47.02h149.82m96-95.99H529.55c-141.69 0-256.53 114.85-256.53 256.53 0 135.77 110.06 245.83 245.83 245.83h5.35c138.72 0 251.18-112.46 251.18-251.18V64.04z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_message:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M825.74 192.99c21.29 0 38.61 17.32 38.61 38.61v448.71c0 21.29-17.32 38.61-38.61 38.61H563.66l-28.73 33.52-23.27 27.15-23.27-27.15-28.73-33.52H197.55c-21.29 0-38.61-17.32-38.61-38.61V231.6c0-21.29 17.32-38.61 38.61-38.61h628.19m0-96H197.55c-74.35 0-134.61 60.26-134.61 134.61v448.71c0 74.35 60.26 134.61 134.61 134.61h217.94l96.16 112.18 96.16-112.18h217.94c74.35 0 134.61-60.26 134.61-134.61V231.6c-0.01-74.35-60.27-134.61-134.62-134.61z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M297.03 383.79c-39.19 0-70.95 31.77-70.95 70.95s31.77 70.95 70.95 70.95 70.95-31.77 70.95-70.95-31.77-70.95-70.95-70.95zM511.9 383.79c-39.19 0-70.95 31.77-70.95 70.95s31.77 70.95 70.95 70.95 70.95-31.77 70.95-70.95-31.77-70.95-70.95-70.95zM727.9 383.79c-39.19 0-70.95 31.77-70.95 70.95s31.77 70.95 70.95 70.95 70.95-31.77 70.95-70.95-31.76-70.95-70.95-70.95z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_college_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M890.99829828 77.06618353H650.59458181c-53.98805334 0-105.0549094 25.53342803-137.29627192 68.59403972-32.67413249-42.62784172-83.74098855-68.16126974-137.29627191-68.59403972H134.62458909c-39.27387448 0-70.97427453 32.13317002-70.97427452 71.94800696v645.58459773c0 39.70664443 31.70040007 71.94800697 70.97427452 71.94800694H386.49670968c33.6478649 33.6478649 78.54774894 52.04058849 126.36883025 52.04058849s92.28819538-18.93368604 126.36883027-52.04058849h251.76392808c39.27387448 0 70.97427453-32.13317002 70.97427452-71.94800694V148.58142052c-0.43276997-39.27387448-32.13317002-71.51523699-70.97427452-71.51523699zM404.45666328 575.07622264c0 19.04187854-15.5797188 34.62159733-34.62159732 34.62159733H202.78585883c-19.04187854 0-34.62159733-15.5797188-34.62159731-34.62159733s15.5797188-34.62159733 34.62159731-34.62159733h167.15739963c18.93368604 0 34.51340485 15.5797188 34.51340482 34.62159733z m0-251.33115813c0 19.04187854-15.5797188 34.62159733-34.62159732 34.62159734H202.78585883c-19.04187854 0-34.62159733-15.5797188-34.62159731-34.62159734s15.5797188-34.62159733 34.62159731-34.62159733h167.15739963c18.93368604 0 34.51340485 15.5797188 34.51340482 34.62159733z m143.03047399 488.05632988c0 19.04187854-15.5797188 34.62159733-34.62159734 34.62159734s-34.62159733-15.5797188-34.62159734-34.62159734v-579.9117553c0-19.04187854 15.5797188-34.62159733 34.62159734-34.62159733s34.62159733 15.5797188 34.62159734 34.62159733v579.9117553z m314.08280328-243.43310624c0 19.04187854-15.5797188 34.62159733-34.62159734 34.62159732H659.89913609c-19.04187854 0-34.62159733-15.5797188-34.62159734-34.62159732s15.5797188-34.62159733 34.62159734-34.62159733h167.15739962c18.93368604 0 34.51340485 15.5797188 34.51340484 34.62159733z m0-251.33115811c0 19.04187854-15.5797188 34.62159733-34.62159734 34.62159733H659.89913609c-19.04187854 0-34.62159733-15.5797188-34.62159734-34.62159733s15.5797188-34.62159733 34.62159734-34.62159735h167.15739962c18.93368604 0 34.51340485 15.5797188 34.51340484 34.62159735z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_service_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M431.2 127c-40.6-40.6-94.6-63-152.1-63S167.6 86.4 127 127c-40.6 40.6-63 94.6-63 152 0 57.4 22.4 111.4 63 152.1 40.6 40.6 94.6 63 152.1 63h215.1V279c0-57.4-22.4-111.4-63-152z m99 152.1v215.1h215.1c57.4 0 111.4-22.4 152.1-63 40.6-40.6 63-94.6 63-152.1 0-57.4-22.4-111.4-63-152.1-40.6-40.6-94.6-63-152.1-63-57.4 0-111.4 22.4-152.1 63-40.6 40.6-63 94.6-63 152.1z m-36 466V530H279.1c-57.4 0-111.4 22.4-152.1 63-40.6 40.6-63 94.6-63 152.1 0 57.4 22.4 111.4 63 152.1 40.6 40.6 94.6 63 152.1 63s111.4-22.4 152.1-63c40.6-40.6 63-94.7 63-152.1z m99 152.1c40.6 40.6 94.6 63 152.1 63 57.4 0 111.4-22.4 152.1-63 40.6-40.6 63-94.6 63-152.1 0-57.4-22.4-111.4-63-152.1-40.6-40.6-94.6-63-152.1-63H530.2v215.1c0 57.4 22.4 111.5 63 152.1z m152.1-17"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_college:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M861.696 91.136h-222.208c-47.104 0-92.672 17.92-126.976 48.64-34.816-30.72-79.872-48.128-126.464-48.64H162.304c-53.76 0-97.792 44.032-97.792 98.304v596.992c0 54.272 44.032 98.304 97.792 98.304h220.16c35.84 31.232 81.408 48.128 129.536 48.128 47.104 0 92.672-16.896 129.024-48.128h220.16c53.76 0 97.792-44.032 97.792-98.304V188.928c-0.512-54.272-44.032-97.792-97.28-97.792zM415.232 796.672H187.392c-16.896 0-31.232-14.336-31.232-31.744v-552.96c0-17.408 13.824-31.744 31.232-31.744H394.24c26.624 0.512 52.736 9.728 73.216 26.112-0.512 1.024-0.512 2.56-0.512 3.584v623.616c-15.872-6.144-30.72-15.36-43.008-27.648l-8.704-9.216z m451.072-32.256c0 17.408-13.824 31.744-31.232 31.744h-227.84l-8.704 8.192c-12.8 12.288-27.648 21.504-43.008 27.648V209.408c0-1.024 0-2.048-0.512-3.584 20.48-16.896 47.104-26.624 74.24-26.624h205.824c16.896 0 30.72 14.336 31.232 31.744v553.472z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M379.904 313.856H225.28c-17.408 0-32.256 14.336-32.256 32.256s14.336 32.256 32.256 32.256h154.624c17.408 0 32.256-14.336 32.256-32.256s-14.848-32.256-32.256-32.256zM379.904 546.304H225.28c-17.408 0-32.256 14.336-32.256 32.256s14.336 32.256 32.256 32.256h154.624c17.408 0 32.256-14.336 32.256-32.256s-14.848-32.256-32.256-32.256zM802.304 307.712h-154.624c-17.408 0-32.256 14.336-32.256 32.256s14.336 32.256 32.256 32.256h154.624c17.408 0 32.256-14.336 32.256-32.256s-14.336-32.256-32.256-32.256zM802.304 540.16h-154.624c-17.408 0-32.256 14.336-32.256 32.256s14.336 32.256 32.256 32.256h154.624c17.408 0 32.256-14.336 32.256-32.256s-14.336-32.256-32.256-32.256z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_nav_bar_service:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M897.536 431.104c40.448-40.448 62.976-94.72 62.976-152.064s-22.528-111.104-62.976-152.064c-40.448-40.448-94.72-62.976-152.064-62.976s-111.104 22.528-152.064 62.976c-40.448 40.448-62.976 94.72-62.976 152.064v215.04h215.04c57.856 0 111.616-22.528 152.064-62.976z m-273.408-151.552c0-32.768 12.8-63.488 35.84-86.528 23.04-23.04 53.76-35.84 86.528-35.84 32.768 0 62.976 12.8 86.016 35.84s35.84 53.76 35.84 86.528c0 32.768-12.8 63.488-35.84 86.528-23.04 23.04-53.76 35.84-86.528 35.84h-121.856V279.552zM281.6 528.384c-57.344 0-111.104 22.528-152.064 62.976C89.088 631.808 66.56 686.08 66.56 743.424s22.528 111.104 62.976 152.064c40.448 40.448 94.72 62.976 152.064 62.976s111.104-22.528 152.064-62.976C474.112 855.04 496.64 800.768 496.64 743.424v-215.04H281.6z m117.76 216.064c0 31.232-12.288 60.416-34.304 82.944-22.016 22.016-51.712 34.304-82.944 34.304s-60.416-12.288-82.432-34.304c-22.016-22.016-34.304-51.712-34.304-82.944s12.288-60.416 34.304-82.944c22.016-22.016 51.712-34.304 82.944-34.304H399.36v117.248zM280.064 494.08h215.04v-215.04c0-57.344-22.528-111.104-62.976-151.552C391.68 87.04 337.92 64.512 280.064 64.512 222.72 64.512 168.96 87.04 128.512 127.488c-40.448 40.448-62.976 94.72-62.976 152.064s22.528 111.104 62.976 152.064c40.448 39.936 94.208 62.464 151.552 62.464zM200.192 199.168c22.528-22.528 52.224-34.816 83.968-34.816 31.744 0 61.44 12.288 83.968 34.816s34.816 52.224 34.816 83.968v118.272H284.16c-31.744 0-61.44-12.288-83.968-34.816-22.528-22.528-34.816-52.224-34.816-83.968s12.288-60.928 34.816-83.456zM745.472 528.384h-215.04v215.04c0 57.344 22.528 111.104 62.976 151.552 40.448 40.448 94.72 62.976 152.064 62.976s111.616-22.528 152.064-62.976c40.448-40.448 62.976-94.72 62.976-151.552s-22.528-111.104-62.976-152.064c-40.96-40.448-94.72-62.976-152.064-62.976z m87.04 302.08c-23.04 23.04-53.76 35.84-86.528 35.84s-63.488-12.8-86.528-35.84c-23.04-23.04-35.84-53.76-35.84-86.016v-121.856h121.856c32.768 0 63.488 12.8 86.528 35.84 23.04 23.04 35.84 53.76 35.84 86.528s-12.288 62.464-35.328 85.504z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_close:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M582.67314545 512.47187308l350.85605749 350.8560575a49.65560549 49.65560549 0 0 1-70.20025039 70.20024953L512.47289592 582.67212345 161.61683843 933.52818011a49.65560549 49.65560549 0 0 1-70.20024953-70.20024954L442.27264639 512.47187308 91.4165889 161.61581644A49.65560549 49.65560549 0 1 1 161.61683843 91.41556691L512.47289592 442.27162356 863.32895256 91.41556691a49.65560549 49.65560549 0 0 1 70.20025038 70.20024953L582.67314545 512.47187308z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_search:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M785.12 724.64l164.64 164.64c16.32 16.32 16.32 45.12 0 64.8-17.28 16.32-44.16 16.32-61.44 0l-161.76-164.64c-73.92 60.48-166.08 93.6-261.6 93.6-226.08 3.36-407.04-180.96-407.04-410.4S238.88 62.24 464.96 62.24c226.08 0 407.04 184.32 407.04 410.4 0.48 96.96-32.16 184.32-86.88 252z m-320.16 71.04c174.72 0 316.8-145.44 316.8-319.68 0-174.72-142.08-319.68-316.8-319.68-174.24 0-316.8 145.44-316.8 319.68 0.48 174.24 142.56 319.68 316.8 319.68z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_scan:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M78.336 512c0 24.576 19.968 45.056 45.056 45.056H911.36c24.576 0 45.056-19.968 45.056-45.056s-19.968-45.056-45.056-45.056H123.392c-25.088 0-45.056 20.48-45.056 45.056z m763.904-450.048h-158.72c-25.088 0-45.056 19.968-45.056 45.056s19.968 45.056 45.056 45.056h129.024c33.28 0 59.904 27.136 59.904 59.904v129.024c0 25.088 19.968 45.056 45.056 45.056s45.056-19.968 45.056-45.056v-158.72c-0.512-66.56-54.272-120.32-120.32-120.32zM107.008 386.048c25.088 0 45.056-19.968 45.056-45.056V211.968c0-33.28 27.136-59.904 59.904-59.904h129.024c25.088 0 45.056-19.968 45.056-45.056s-19.968-45.056-45.056-45.056h-158.72c-66.048 0-119.808 53.76-119.808 119.808v158.72c-0.512 25.088 19.456 45.568 44.544 45.568z m233.984 485.888H211.968c-33.28 0-59.904-27.136-59.904-59.904v-129.024c0-25.088-19.968-45.056-45.056-45.056s-45.056 19.968-45.056 45.056v158.72c0 66.048 53.76 119.808 119.808 119.808h158.72c25.088 0 45.056-19.968 45.056-45.056 0.512-24.576-19.968-44.544-44.544-44.544z m576-233.984c-25.088 0-45.056 19.968-45.056 45.056v129.024c0 33.28-27.136 59.904-59.904 59.904h-129.024c-25.088 0-45.056 19.968-45.056 45.056s19.968 45.056 45.056 45.056h158.72c66.048 0 119.808-53.76 119.808-119.808v-158.72c0.512-25.088-19.456-45.568-44.544-45.568z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_message:
        svgXml = '''
          <svg viewBox="0 0 1092 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M905.427125 83.844125c31.752 0 62.51175 12.403125 84.837375 34.232625 22.325625 21.8295 35.224875 51.59699999 35.224875 82.852875v586.41975c0 31.255875-12.89925 61.023375-35.224875 82.852875-22.82175 21.8295-53.085375 34.232625-84.837375 34.232625H695.56625l-119.566125 69.953625c-18.85275 10.91475-42.170625 10.91475-60.52725 0l-119.566125-69.953625H186.045875c-31.752 0-62.015625-12.403125-84.837375-34.232625-22.325625-21.8295-35.224875-51.59699999-35.224875-82.852875V201.42575c0-31.255875 12.89925-61.023375 35.224875-82.852875 22.82175-21.8295 53.085375-34.232625 84.837375-34.232625h719.38125z m0 88.31025h-719.38125c-7.938 0-15.379875 2.97675-21.333375 8.434125-5.457375 5.457375-8.93025 12.89925-8.93025 20.83725v586.41975c0 7.938 2.97675 15.379875 8.93025 20.83725 5.457375 5.457375 13.395375 8.434125 21.333375 8.434125h239.628375l90.790875 50.108625c17.8605 9.9225 39.69 9.9225 57.5505 0l90.790875-50.108625h239.628375c7.938 0 15.379875-2.97675 21.333375-8.434125 5.457375-5.457375 8.93025-12.89925 8.93025-20.83725V201.42575c0-7.938-2.97675-15.379875-8.93025-20.83725-4.465125-5.457375-12.403125-8.434125-20.341125-8.434125zM307.5965 435.59675c33.7365 0 61.023375 26.79075 61.023375 60.031125 0 33.240375-27.286875 60.031125-61.023375 60.03112501-33.7365 0-61.5195-26.79075-61.51950001-60.03112501s27.286875-60.031125 61.51950001-60.031125z m239.628375 0c33.7365 0 61.023375 26.79075 61.023375 60.031125 0 33.240375-27.286875 60.031125-61.023375 60.03112501-33.7365 0-61.5195-26.79075-61.5195-60.03112501s27.78300001-60.031125 61.5195-60.031125z m239.628375 0c33.7365 0 61.023375 26.79075 61.023375 60.031125 0 33.240375-27.286875 60.031125-61.023375 60.03112501-33.7365 0-61.5195-26.79075-61.5195-60.03112501s27.78300001-60.031125 61.5195-60.031125z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_list:
        svgXml = '''
          <svg viewBox="0 0 1092 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M126.510875 249.549875h838.45125c33.240375 0 60.031125-26.79075 60.031125-60.031125 0-33.240375-26.79075-60.031125-60.031125-60.031125h-838.45125c-33.240375 0-60.031125 26.79075-60.031125 60.031125 0.496125 33.240375 27.286875 60.031125 60.031125 60.031125z m838.45125 209.36475h-838.45125c-33.240375 0-60.031125 26.79075-60.031125 60.031125 0 33.240375 26.79075 60.031125 60.031125 60.031125h838.45125c33.240375 0 60.031125-26.79075 60.031125-60.031125 0-33.240375-26.79075-60.031125-60.031125-60.031125z m0 329.427H336.37175c-33.240375 0-60.031125 26.79075-60.031125 60.031125 0 33.240375 26.79075 60.031125 60.031125 60.031125h629.0865c33.240375 0 60.031125-26.79075 60.031125-60.031125-0.496125-33.240375-27.286875-60.031125-60.52725-60.031125z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_flashlight:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M514.09140489 539.88861817c14.20837119 0 25.72867178 12.65827148 25.72867177 28.27087118v71.58755391c0 15.61347862-11.52030059 28.27087119-25.72867178 28.27087119s-25.72867178-12.65827148-25.72867178-28.27087119v-71.58755391c0-15.61259971 11.52030059-28.27087119 25.72867178-28.27087119zM285.82775878 62h456.52641329c30.56526474 0 55.43364902 24.85871807 55.43364902 55.43452792v93.42691612c0 161.11285752-88.04374541 258.07495078-127.17498252 291.82126026v403.3854c0 30.83415997-24.99228633 55.93365263-55.8202957 55.93365351H412.24350869c-30.82449375 0-54.67441641-25.10037158-54.6744164-55.93365351V502.72136826c-39.13123711-33.5846206-127.17498252-129.7830876-127.17498252-291.85992422V117.43452793C230.39498867 86.85871807 255.26249404 62 285.82775878 62zM600.31351953 899.00126563v-79.0867336H427.86929023v79.0867336H600.31351953z m131.68029024-630.9363876H296.12573018c21.00016406 122.04576914 113.82777862 194.0076668 114.88051054 194.72823457 11.14244209 7.63274883 9.63276416 17.58537422 9.63276417 30.7357418v283.0593287h186.91007167V493.53061133c0-13.09500527-2.1783999-23.00369502 8.88583448-30.64698809 4.1854456-2.955208 94.6220045-72.77385498 115.55889873-194.81874522zM296.05806758 122.6331626v92.31003545H732.12474219V122.6331626H296.05806758z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_arrow_left:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M757.8 945.4a49.65 49.65 0 0 0 0-71.7L374.2 512.6l383.5-362a49.65 49.65 0 0 0 0-71.7c-20.40000001-19.7-53.7-19.7-74.1 0l-403 388.9c-13 12.5-25 29.6-21.3 45.7-2.8 16.1 10.2 31.4 21.3 43.9l403 388c20.49999999 19.7 53.8 19.7 74.2 0z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_arrow_right:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M266.2 78.6a49.65 49.65 0 0 0 0 71.7L649.8 511.4l-383.5 362a49.65 49.65 0 0 0 0 71.7c20.40000001 19.7 53.7 19.7 74.1 0l403-388.9c13-12.5 25-29.6 21.3-45.7 2.8-16.1-10.2-31.4-21.3-43.9l-403-388c-20.49999999-19.7-53.8-19.7-74.2 0z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_arrow_down:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M945.4 266.2a49.65 49.65 0 0 0-71.7 0L512.6 649.8l-362-383.5a49.65 49.65 0 0 0-71.7 0c-19.7 20.40000001-19.7 53.7 0 74.1l388.9 403c12.5 13 29.6 25 45.7 21.3 16.1 2.8 31.4-10.2 43.9-21.3l388-403c19.7-20.49999999 19.7-53.8 0-74.2z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.az_arrow_up:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M78.6 757.8a49.65 49.65 0 0 0 71.7 0L511.4 374.2l362 383.5a49.65 49.65 0 0 0 71.7 0c19.7-20.40000001 19.7-53.7 0-74.1l-388.9-403c-12.5-13-29.6-25-45.7-21.3-16.1-2.8-31.4 10.2-43.9 21.3l-388 403c-19.7 20.49999999-19.7 53.8 0 74.2z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_add_group_chat:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M196.99989981 151.9999332a44.9999666 44.9999666 0 0 0-44.99996661 44.9999666v478.12464493a44.9999666 44.9999666 0 0 0 44.99996661 44.9999666h87.19973964a44.9999666 44.9999666 0 0 1 44.99996661 44.9999666v79.07513642l238.60001865-119.30000888a45.31022051 45.31022051 0 0 1 20.12518037-4.77509414H826.99943223a44.9999666 44.9999666 0 0 0 44.9999666-44.9999666V511.99966602a44.9999666 44.9999666 0 1 1 89.9999332 0v163.1248787a134.9998998 134.9998998 0 0 1-134.99989981 134.99989981H598.5745042l-294.29978203 147.14989102a44.9999666 44.9999666 0 0 1-65.07417042-40.25036074V810.12444453H196.99989981A134.9998998 134.9998998 0 0 1 62 675.12454472v-478.12464492A134.9998998 134.9998998 0 0 1 196.99989981 62h264.374804a44.9999666 44.9999666 0 0 1 0 89.9999332H196.99989981zM739.82430195 62a44.9999666 44.9999666 0 0 1 44.99996661 44.9999666v106.8749209h106.87492001a44.9999666 44.9999666 0 0 1 0 89.9999332h-106.87492001v106.8749209a44.9999666 44.9999666 0 1 1-89.9999332 1e-8V303.8748207h-106.87492091a44.9999666 44.9999666 0 0 1 0-89.9999332h106.85031153V106.99996661a44.9999666 44.9999666 0 0 1 44.9999666-44.99996661h0.02460937z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_invite:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M768.536 175.832v323.064c0 27.72 18.648 46.368 46.872 46.368s46.872-18.648 46.872-46.368V175.832c0-50.904-42.336-92.232-93.744-92.232H207.584C156.176 83.6 114.344 124.928 113.84 175.832v682.92c0 37.296 32.76 69.048 70.056 69.048h259.56c23.184-9.072 44.352-12.096 44.352-58.968s-44.352-47.376-80.64-47.376H207.584V175.832h560.952z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M718.136 593.144c28.224 0 46.872 18.648 46.872 46.368v92.232h93.744c28.224 0 46.872 18.648 46.872 46.368s-18.648 46.368-46.872 46.368h-93.744v92.232c0 27.72-18.648 46.368-46.872 46.368s-46.872-18.648-46.872-46.368V824.48H577.52c-28.224 0-46.872-18.648-46.872-46.368s18.648-46.368 46.872-46.368h93.744v-92.232c0-27.72 18.648-46.368 46.872-46.368z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_org_sub_tree:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M456.4 128.2c12.9 0 23.4 10.5 23.4 23.3v131c0 12.9-10.5 23.4-23.4 23.4H150.7c-12.9 0-23.4-10.5-23.4-23.4v-131c0-12.9 10.5-23.3 23.4-23.3h305.7m0-64H150.7c-48.2 0-87.4 39.1-87.4 87.3v131c0 48.2 39.1 87.4 87.4 87.4h305.7c48.2 0 87.4-39.1 87.4-87.4v-131c0-48.2-39.2-87.3-87.4-87.3z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M205.3 343.5c-18.1 0-32.8 15.5-32.8 34.6v437.8c0 19.1 14.7 34.6 32.8 34.6 18.1 0 32.8-15.5 32.8-34.6V378c-0.1-19.1-14.7-34.5-32.8-34.5z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M336.3 479.9h-131c-18.1 0-32.8 14.3-32.8 32s14.7 32 32.8 32h131c18.1 0 32.8-14.3 32.8-32s-14.7-32-32.8-32zM336.3 785.6h-131c-18.1 0-32.8 14.3-32.8 32s14.7 32 32.8 32h131c18.1 0 32.8-14.3 32.8-32s-14.7-32-32.8-32z"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M871.3 477.6c12.9 0 23.3 9.7 23.3 21.6v85.6c0 11.9-10.5 21.6-23.3 21.6H565.6c-12.9 0-23.3-9.7-23.3-21.6v-85.6c0-11.9 10.5-21.6 23.3-21.6h305.7m0-64H565.6c-48.2 0-87.3 38.3-87.3 85.6v85.6c0 47.3 39.1 85.6 87.3 85.6h305.7c48.2 0 87.3-38.3 87.3-85.6v-85.6c0.1-47.2-39-85.6-87.3-85.6zM871.3 766.4c12.9 0 23.3 9.7 23.3 21.6v85.6c0 11.9-10.5 21.6-23.3 21.6H565.6c-12.9 0-23.3-9.7-23.3-21.6V788c0-11.9 10.5-21.6 23.3-21.6h305.7m0-64H565.6c-48.2 0-87.3 38.3-87.3 85.6v85.6c0 47.3 39.1 85.6 87.3 85.6h305.7c48.2 0 87.3-38.3 87.3-85.6V788c0.1-47.2-39-85.6-87.3-85.6z"
              fill="${getColor(3, color, colors, '#000')}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_bar_my:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M775.38 684.24c43.42 0 78.74 35.32 78.74 78.74v65.53c0 19.33-15.72 35.05-35.05 35.05H207.49c-19.33 0-35.05-15.72-35.05-35.05v-65.53c0-43.42 35.32-78.74 78.74-78.74h524.2m0-96H251.17c-96.5 0-174.74 78.24-174.74 174.74v65.53c0 72.38 58.67 131.05 131.05 131.05h611.58c72.38 0 131.05-58.67 131.05-131.05v-65.53c0.01-96.5-78.23-174.74-174.73-174.74zM679.38 160.04v155.18c0 41.45-16.14 80.42-45.45 109.73-29.31 29.31-68.28 45.45-109.73 45.45h-5.35c-40.02 0-77.65-15.59-105.95-43.88-28.3-28.3-43.88-65.93-43.88-105.95 0-42.88 16.7-83.2 47.02-113.52 30.32-30.32 70.63-47.02 113.52-47.02h149.82m96-95.99H529.55c-141.69 0-256.53 114.85-256.53 256.53 0 135.77 110.06 245.83 245.83 245.83h5.35c138.72 0 251.18-112.46 251.18-251.18V64.04z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_structure:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M926.72 632.832h-14.336c-12.8 0-23.04-10.24-23.04-23.04v-72.704c0-35.84-29.184-65.024-65.024-65.024h-249.344c-12.8 0-23.04-10.24-23.04-23.04V383.488c0-5.632 4.608-10.752 10.752-10.752h49.664c36.352 0 66.048-29.696 66.048-66.048V130.048c0-36.352-29.696-66.048-66.048-66.048H419.328c-36.352 0-66.048 29.696-66.048 66.048v176.64c0 36.352 29.696 66.048 66.048 66.048h46.08c7.68 0 13.824 6.144 13.824 13.824v53.248c0 17.408-14.336 31.232-31.232 31.232H206.336c-35.84 0-65.024 29.184-65.024 65.024V609.28c0 12.8-10.24 23.04-23.04 23.04h-14.336c-36.352 0-66.048 29.696-66.048 66.048v161.28c0 36.352 29.696 66.048 66.048 66.048h161.28c36.352 0 66.048-29.696 66.048-66.048v-161.28c0-36.352-29.696-66.048-66.048-66.048h-28.16c-12.8 0-23.04-10.24-23.04-23.04v-42.496c0-12.8 10.24-23.04 23.04-23.04H455.68c12.8 0 23.04 10.24 23.04 23.04v42.496c0 12.8-10.24 23.04-23.04 23.04h-21.504c-36.352 0-66.048 29.696-66.048 66.048v161.28c0 36.352 29.696 66.048 66.048 66.048h161.28c36.352 0 66.048-29.696 66.048-66.048v-161.28c0-36.352-29.696-66.048-66.048-66.048h-21.504c-12.8 0-23.04-10.24-23.04-23.04v-42.496c0-12.8 10.24-23.04 23.04-23.04H793.6c12.8 0 23.04 10.24 23.04 23.04v42.496c0 12.8-10.24 23.04-23.04 23.04h-28.16c-36.352 0-66.048 29.696-66.048 66.048v161.28c0 36.352 29.696 66.048 66.048 66.048H926.72c36.352 0 66.048-29.696 66.048-66.048v-161.28c0.512-35.84-29.184-65.536-66.048-65.536zM448.512 135.68h133.632c12.8 0 23.04 10.24 23.04 23.04v118.272c0 12.8-10.24 23.04-23.04 23.04H448.512c-12.8 0-23.04-10.24-23.04-23.04V158.72c0-12.288 10.24-23.04 23.04-23.04zM236.032 854.528H133.12c-12.8 0-23.04-10.24-23.04-23.04v-102.912c0-12.8 10.24-23.04 23.04-23.04h102.912c12.8 0 23.04 10.24 23.04 23.04v102.912c0 12.288-10.24 23.04-23.04 23.04z m330.752 0H463.872c-12.8 0-23.04-10.24-23.04-23.04v-102.912c0-12.8 10.24-23.04 23.04-23.04h102.912c12.8 0 23.04 10.24 23.04 23.04v102.912c0 12.288-10.24 23.04-23.04 23.04z m330.752 0h-102.912c-12.8 0-23.04-10.24-23.04-23.04v-102.912c0-12.8 10.24-23.04 23.04-23.04h102.912c12.8 0 23.04 10.24 23.04 23.04v102.912c0 12.288-10.24 23.04-23.04 23.04z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_del:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M904.728125 197.8184375H119.271875c-21.8175 0-43.6359375 17.454375-43.6359375 43.6359375 0 21.8184375 17.4553125 43.636875 43.636875 43.636875h52.363125v541.0903125c0 65.454375 56.728125 122.1825 122.1825 122.1825h436.363125c65.454375 0 122.1825-56.728125 122.1825-122.1825V285.09125h52.363125c21.8184375 0 43.636875-17.4553125 43.636875-43.636875 0-21.8184375-17.4553125-43.6359375-43.636875-43.6359375zM782.5446875 826.1815625c0 30.545625-21.8184375 52.3640625-52.3640625 52.3640625H293.8184375c-30.545625 0-52.3640625-21.8184375-52.3640625-52.3640625V285.09125h541.09125v541.0903125z m-401.454375-663.271875h261.8175c21.8184375 0 43.636875-17.4553125 43.636875-43.636875 0-21.8184375-17.454375-43.636875-43.636875-43.636875H381.09125c-21.8184375 0-43.636875 17.4553125-43.636875 43.636875 0 21.8184375 17.454375 43.6359375 43.636875 43.6359375z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M608 752c21.8184375 0 43.6359375-17.454375 43.6359375-43.6359375V446.545625c0-21.8184375-17.454375-43.636875-43.6359375-43.636875-21.8184375 0-43.6359375 17.4553125-43.6359375 43.636875v261.8184375c0 21.8175 21.8175 43.6359375 43.6359375 43.6359375z m-192 0c21.8184375 0 43.6359375-17.454375 43.6359375-43.6359375V446.545625c0-21.8184375-17.454375-43.636875-43.6359375-43.636875-21.8184375 0-43.6359375 17.4553125-43.6359375 43.636875v261.8184375c0 21.8175 17.454375 43.6359375 43.6359375 43.6359375z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_live_back:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M603.68 512.48l317.76-317.76c24.48-24.48 24.48-67.2 0-91.68s-67.2-24.48-91.68 0L512.48 420.8 194.72 103.04c-24.48-24.48-67.2-24.48-91.68 0s-24.48 67.2 0 91.68L420.8 512.48l-317.76 317.76c-24.48 24.48-24.48 67.2 0 91.68 24.48 24.48 67.2 24.48 91.68 0l317.76-317.76 317.76 317.76c24.48 24.48 67.2 24.48 91.68 0 24.48-24.48 24.48-67.2 0-91.68l-318.24-317.76z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_checked:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 962C263.47441836 962 62 760.52558164 62 512S263.47441836 62 512 62 962 263.47441836 962 512 760.52558164 962 512 962z m242.76976787-604.61162754a39.70465136 39.70465136 0 0 0-56.15581464 0L445.92325596 610.07906972 332 496.15581377a39.68372109 39.68372109 0 1 0-56.13488349 56.15581376l141.96976698 141.99069815a39.70465136 39.70465136 0 0 0 56.15581378 0l280.7790706-280.75813945c15.48837247-15.50930273 15.48837247-40.64651191 0-56.15581376z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_circle:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 896.9552c212.5872 0 384.9552-172.368 384.9552-384.9552S724.5872 127.0448 512 127.0448 127.0448 299.4128 127.0448 512s172.368 384.9552 384.9552 384.9552z m0 63c-247.464 0-447.9552-200.592-447.9552-447.9552S264.536 64.0448 512 64.0448s447.9552 200.592 447.9552 447.9552S759.464 959.9552 512 959.9552z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_group_info_edit:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M538.624 512m-436.224 0a436.224 436.224 0 1 0 872.448 0 436.224 436.224 0 1 0-872.448 0Z"
              fill="${getColor(0, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M538.624 904.704c-217.088 0-392.704-176.128-392.704-392.704s176.128-392.704 392.704-392.704 392.704 176.128 392.704 392.704-176.128 392.704-392.704 392.704z m-178.688-283.648L348.16 701.952l80.896-11.776L660.48 458.752 590.848 389.12l-230.912 231.936zM614.4 366.08l69.632 69.632 23.04-23.04c12.8-12.8 12.8-33.28 0-46.08l-23.04-23.04c-12.8-12.8-33.28-12.8-46.08 0l-23.552 22.528z"
              fill="${getColor(1, color, colors, "#1362E2")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_group_user_remove:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M845.13535156 62.13535156c55.8 0 101.11464844 42.81679688 106.60429688 96.975l0.51855469 10.95732422v374.21982422c0 22.31982422-13.56855469 40.34179688-36.36035157 40.34179688-20.16035156 0-32.175-14.24179688-35.59570312-33.0741211l-0.74179688-7.26767578v-380.97070312a26.55 26.55 0 0 0-19.125-26.25644532l-5.58105468-0.74267578h-693.76464844c-11.925 0.40429688-21.9375 9.04482422-24.09697266 20.76767578l-0.675 6.16464844v687.98232422c0 13.05 8.45947266 23.58017578 19.21464844 26.25732422l5.55732422 0.74267578h609.88535156c22.70214844 0 41.175 15.56982422 41.175 37.98017578 0 19.8-14.55732422 32.26464844-33.83964844 35.59570313l-7.425 0.74179687H169.325A106.875 106.875 0 0 1 62.675 856.11464844L62.13535156 845.36035156V170.06767578A107.55 107.55 0 0 1 158.3 62.74267578l10.98017578-0.60732422h675.9zM805.46679688 658.29394531l128.47499999 74.18232422a37.07226563 37.07226563 0 0 1 18.53964844 32.49052735l-0.225 1.84482421c0 20.475-16.60517578 37.08017578-37.08017578 37.08017579H618.47070313a37.08017578 37.08017578 0 0 1-1e-8-74.16035157h162.51767579l-12.6-7.2a37.08017578 37.08017578 0 0 1 37.08017578-64.2375zM507.20732422 210.5a148.34179688 148.34179688 0 0 1 110.51982422 247.29785156 259.01982422 259.01982422 0 0 1 104.87285156 89.90947266 37.125 37.125 0 0 1-61.56035156 41.46767578 185.44482422 185.44482422 0 0 0-339.3 103.45517578 37.08017578 37.08017578 0 0 1-74.09179688 0c0-100.55302734 58.05-192.06035156 149.03964844-234.9A148.34179688 148.34179688 0 0 1 507.20732422 210.5z m0 74.18232422a74.18232422 74.18232422 0 1 0 0 148.34267578 74.18232422 74.18232422 0 0 0 0-148.34179687z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_group_user_add:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M768 533.333a42.667 42.667 0 0 1 42.539 39.467l0.128 3.2v128h128a42.667 42.667 0 0 1 3.2 85.205l-3.2 0.128h-128v128a42.667 42.667 0 0 1-85.206 3.2l-0.128-3.2v-128h-128a42.667 42.667 0 0 1-3.2-85.205l3.2-0.128h128V576A42.667 42.667 0 0 1 768 533.333zM512 576a42.667 42.667 0 1 1 0 85.333c-218.88 0-341.333 66.006-341.333 149.334 0 29.269 14.122 41.642 43.733 42.624l3.968 0.042h336.299a42.667 42.667 0 0 1 3.2 85.206l-3.2 0.128H218.368c-75.605 0-133.035-45.312-133.035-128 0-117.12 109.355-198.4 288.854-225.11l16-2.218C427.989 578.517 468.693 576 512 576z m0-512a234.667 234.667 0 1 1 0 469.333A234.667 234.667 0 0 1 512 64z m0 85.333A149.333 149.333 0 1 0 512 448a149.333 149.333 0 0 0 0-298.667z"
              fill="${getColor(0, color, colors, "#171A1D")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_icon_phone:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M759.398 29.798H246.272c-48.23 0-87.347 39.117-87.347 87.348v791.552c0 48.23 39.117 87.347 87.347 87.347h513.126c48.23 0 87.348-39.117 87.348-87.347V117.146c0-48.23-39.117-87.348-87.348-87.348z m-341.094 62.26h169.062c8.397 0 15.258 6.86 15.258 15.257s-6.86 15.258-15.258 15.258H418.304c-8.397 0-15.258-6.861-15.258-15.258s6.861-15.257 15.258-15.257z m84.582 802.61c-33.996 0-61.542-27.545-61.542-61.542 0-33.996 27.546-61.542 61.542-61.542 33.997 0 61.543 27.546 61.543 61.542-0.103 33.997-27.648 61.543-61.543 61.543z m279.962-227.634a21.764 21.764 0 0 1-21.811 21.81H244.634a21.764 21.764 0 0 1-21.812-21.81V202.138a21.764 21.764 0 0 1 21.812-21.812h516.3a21.764 21.764 0 0 1 21.812 21.812v464.896z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_user_add:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M510.642 593.514c-125.574 0-227.773-102.177-227.773-227.773v-73.208c0-125.597 102.2-227.773 227.773-227.773s227.773 102.176 227.773 227.773v73.208c0 125.595-102.199 227.773-227.773 227.773z m0-439.27c-76.244 0-138.289 62.044-138.289 138.289v73.208c0 76.244 62.045 138.288 138.29 138.288S648.93 441.985 648.93 365.741v-73.208c0-76.245-62.044-138.289-138.289-138.289z m402.676 805.353H107.965c-24.73 0-44.742-20.033-44.742-44.742 0-145.782 118.584-264.387 264.387-264.387h183.031c24.73 0 44.742 20.033 44.742 44.742s-20.012 44.742-44.742 44.742h-183.03c-80.965 0-149.3 55.316-169.094 130.162h754.8c24.73 0 44.742 20.033 44.742 44.742s-20.01 44.741-44.74 44.741z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M803.473 813.159c-24.73 0-44.742-20.033-44.742-44.742V548.771c0-24.708 20.012-44.742 44.742-44.742s44.742 20.034 44.742 44.742v219.646c0 24.709-20.011 44.742-44.742 44.742z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M913.318 703.336H693.673c-24.73 0-44.742-20.034-44.742-44.742s20.011-44.742 44.742-44.742h219.645c24.73 0 44.742 20.033 44.742 44.742s-20.012 44.742-44.742 44.742z"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_message:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M785.408 103.424H246.272c-105.984 0-192.512 86.528-192.512 192.512V604.16c0 105.984 86.528 192.512 192.512 192.512h57.856c21.504 0 38.4-17.408 38.4-38.4s-17.408-38.4-38.4-38.4H246.272c-63.488 0-115.712-51.712-115.712-115.712V295.936c0-63.488 51.712-115.712 115.712-115.712h539.136c63.488 0 115.712 51.712 115.712 115.712V604.16c0 63.488-51.712 115.712-115.712 115.712h-189.952L325.632 875.52c-18.432 10.752-24.576 34.304-14.336 52.736 7.168 12.288 19.968 19.456 33.28 19.456 6.656 0 13.312-1.536 18.944-5.12l251.904-145.408h169.472c105.984 0 192.512-86.528 192.512-192.512V295.936c0.512-106.496-85.504-192.512-192-192.512z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M252.416 448c0 31.744 26.112 57.856 57.856 57.856s57.856-26.112 57.856-57.856c0-31.744-26.112-57.856-57.856-57.856s-57.856 26.112-57.856 57.856zM458.24 448c0 31.744 26.112 57.856 57.856 57.856s57.856-26.112 57.856-57.856c0-31.744-26.112-57.856-57.856-57.856s-57.856 26.112-57.856 57.856zM664.064 448c0 31.744 26.112 57.856 57.856 57.856s57.856-26.112 57.856-57.856c0-31.744-26.112-57.856-57.856-57.856s-57.856 26.112-57.856 57.856z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_video_call:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M202.24 185.344c33.28-24.576 80.384-17.408 104.96 16.384 20.48 27.136 38.912 53.76 55.808 78.848 13.312 20.48 26.112 40.96 38.4 60.928 22.528 37.888 19.968 85.504-6.144 120.832l-30.72 40.96c-1.024 1.536-1.024 3.072-0.512 4.608 13.824 27.136 34.816 55.296 62.464 83.456 28.672 29.184 57.344 51.712 86.528 67.584 1.536 1.024 3.584 0.512 4.608-0.512l39.424-30.72c34.304-26.624 81.408-29.184 118.272-6.656 18.944 11.776 38.912 25.088 59.392 38.912 25.6 17.408 50.688 36.352 76.288 56.32 32.768 26.112 39.936 73.216 15.872 107.52l-1.536 2.048-0.512 0.512c-73.728 96.256-149.504 143.36-228.864 135.68-101.888-10.24-228.864-95.232-333.312-201.728l-4.608-4.608c-100.352-103.936-174.592-223.232-189.44-331.264C56.32 337.92 102.912 258.56 199.68 186.88l2.56-1.536zM245.248 256l-2.56 2.048C171.52 312.32 142.336 363.008 148.992 412.16 160.768 498.176 226.816 604.16 315.904 696.32l4.608 4.608c92.16 94.208 205.312 169.472 283.648 177.664 45.056 4.608 96.256-26.624 153.088-99.328l-3.072-2.048c-18.944-14.848-38.4-29.184-57.856-43.008l-7.168-5.12c-18.432-12.8-36.864-25.088-55.808-36.864-8.192-5.12-18.944-4.608-26.624 1.536l-39.424 30.72c-26.624 20.992-62.976 23.552-92.672 7.168-36.352-19.968-71.68-47.616-105.472-81.92-33.28-34.304-58.88-68.608-77.312-103.936-15.36-30.208-12.288-66.56 7.68-93.696l30.72-40.96c5.632-7.68 6.656-18.432 1.536-27.136-11.776-19.456-23.552-38.4-36.352-57.344-13.824-20.992-29.184-42.496-45.568-65.024 0 0.512-4.608-5.632-4.608-5.632z m484.864-189.44c36.352 0 49.664 4.096 62.976 11.264 13.312 7.168 23.552 17.92 30.72 31.744l1.024 1.536c6.656 12.8 9.728 26.624 10.24 60.928v96.768c0 37.376-3.584 50.688-10.752 64.512-7.168 13.824-17.408 24.064-30.72 31.744l-1.536 1.024c-12.8 6.656-25.6 10.24-59.392 10.24h-153.6c-36.352 0-49.664-4.096-62.976-11.264-13.312-7.168-24.064-17.92-30.72-31.744l-1.024-1.536c-6.656-12.8-9.728-26.624-10.24-60.416V173.056c0-37.376 3.584-50.688 10.752-64 7.168-13.824 17.408-24.064 30.72-31.744l1.536-0.512c12.8-6.656 25.6-10.24 59.392-10.24h153.6z m225.28 59.904c5.12 6.144 7.68 14.336 7.68 22.016v143.872c0 18.944-15.36 34.816-34.304 35.328-8.192 0-15.872-3.072-21.504-8.192l-33.792-28.16c-14.336-11.776-22.528-29.696-22.528-48.64v-45.056c0-18.944 8.192-36.352 22.528-48.64l33.792-28.16c14.336-11.776 35.328-10.24 47.616 4.096 0 1.024 0 1.536 0.512 1.536z m-222.208 23.552H573.44c-4.096 0-7.68 0-11.776 0.512H557.056v2.048c-0.512 4.096-0.512 9.728-0.512 17.408v103.424c0 4.608 0 8.704 0.512 11.776v5.12h2.048c4.096 0.512 9.728 0.512 16.896 0.512h154.624c9.216 0 15.872-0.512 19.968-0.512h2.048v-2.048c0.512-4.096 0.512-9.728 0.512-17.408V173.056c0-6.656 0-13.824-0.512-20.48v-2.048h-2.048c-5.632-0.512-11.776-0.512-17.408-0.512z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_contact:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M824.07619048 68.26666667c70.21714286 0 126.78095238 56.56380952 126.78095238 126.78095238v633.9047619c0 70.21714286-56.56380952 126.78095238-126.78095238 126.78095238H295.9847619c-70.21714286 0-126.78095238-56.56380952-126.78095238-126.78095238v-126.78095238h-63.39047619c-23.40571429 0-42.42285714-19.01714286-42.42285714-42.42285714s19.01714286-42.42285714 42.42285714-42.42285714h63.39047619V406.67428571h-63.39047619c-23.40571429 0-42.42285714-19.01714286-42.42285714-42.42285714s19.01714286-42.42285714 42.42285714-42.42285714h63.39047619V195.04761905c-0.48761905-70.21714286 56.56380952-126.78095238 126.78095238-126.78095238H824.07619048z m0 84.35809523H295.9847619c-21.94285714 0-40.47238095 17.06666667-41.93523809 39.00952381V828.95238095c0 21.94285714 17.06666667 40.47238095 39.00952381 41.9352381h531.5047619c21.94285714 0 40.47238095-17.06666667 41.9352381-39.00952381V195.04761905c0-21.94285714-17.06666667-40.47238095-39.00952381-41.9352381l-3.41333333-0.48761905zM739.71809524 321.82857143c23.40571429 0 42.42285714 19.01714286 42.42285714 42.42285714v295.98476191c0 23.40571429-19.01714286 42.42285714-42.42285714 42.42285714s-42.42285714-19.01714286-42.42285714-42.42285714V364.25142857c0-23.40571429 19.01714286-42.42285714 42.42285714-42.42285714z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_sweep:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M871.93093555 72.46425781h-138.20957227c-21.97678711 0-39.5582168 18.06980273-39.5582168 39.5582168s18.06980273 39.5582168 39.5582168 39.5582168h98.16298242c21.97678711 0 39.5582168 18.06980273 39.5582168 39.55821679v99.13972852c0 21.97678711 18.06980273 39.5582168 39.5582168 39.5582168s39.5582168-18.06980273 39.55821679-39.5582168V152.06906445c0.97674609-44.44194727-34.18611328-79.60480664-78.62806054-79.60480664zM116.90620508 330.81359961c21.97678711 0 39.5582168-18.06980273 39.5582168-39.5582168V191.1389082c0-21.97678711 18.06980273-39.5582168 39.55821679-39.55821679h98.16298242c21.97678711 0 39.5582168-18.06980273 39.5582168-39.5582168S316.65078125 72.46425781 294.67399414 72.46425781H156.95279492c-43.95357422 0-79.60480664 35.16285937-79.60480664 79.60480664v139.18631836c0 21.48841406 18.06980273 39.5582168 39.5582168 39.5582168zM295.65074023 868.51232422H196.51101172c-21.97678711 0-39.5582168-18.06980273-39.5582168-39.5582168v-98.65135547c0-21.48841406-17.58142969-39.5582168-39.5582168-39.55821679H116.41783203c-21.48841406 0-39.5582168 17.58142969-39.5582168 39.55821679v137.72119922c0 43.95357422 35.16285937 79.60480664 79.60480665 79.60480664h138.69794531c21.48841406 0 39.5582168-17.58142969 39.55821679-39.55821679s-18.06980273-39.5582168-39.06984375-39.5582168z m616.32678516-177.76778906h-1.46511914c-21.48841406 0-39.5582168 17.58142969-39.5582168 39.55821679v98.65135547c0 21.97678711-18.06980273 39.5582168-39.55821679 39.5582168h-98.65135547c-21.48841406 0-39.5582168 17.58142969-39.5582168 39.5582168s17.58142969 39.5582168 39.5582168 39.55821679h138.69794531c43.46520117 0 79.60480664-35.16285937 79.60480664-79.60480664v-137.23282617c0.48837305-22.9535332-17.09305664-40.04658984-39.06984375-40.04658984zM116.90620508 550.09309766h794.58294726c21.97678711 0 39.5582168-18.06980273 39.5582168-39.5582168 0-21.97678711-17.58142969-39.5582168-39.5582168-39.5582168H116.90620508c-21.97678711 0-39.5582168 18.06980273-39.5582168 39.5582168 0 21.97678711 18.06980273 39.5582168 39.5582168 39.5582168z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_video_comment:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 61.44c-248.832 0-450.56 201.728-450.56 450.56 0 123.392 49.664 235.52 130.048 316.928L121.344 890.88c-8.704 7.68-13.824 18.944-13.824 30.72 0 22.528 18.432 40.96 40.96 40.96h363.008c248.832 0 450.56-201.728 450.56-450.56 0.512-248.832-201.216-450.56-450.048-450.56zM276.48 583.68c-39.424 0-71.68-32.256-71.68-71.68s32.256-71.68 71.68-71.68 71.68 32.256 71.68 71.68-32.256 71.68-71.68 71.68z m307.2-71.68c0 39.424-32.256 71.68-71.68 71.68s-71.68-32.256-71.68-71.68 32.256-71.68 71.68-71.68 71.68 32.256 71.68 71.68z m235.52 0c0 39.424-32.256 71.68-71.68 71.68s-71.68-32.256-71.68-71.68 32.256-71.68 71.68-71.68 71.68 32.256 71.68 71.68z"
              fill="${getColor(0, color, colors, "#131415")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_video_like:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M675.36554667 113.46488889c-62.31153778 0-118.85226667 23.34606222-165.99608889 68.05617778-47.39072-45.20391111-103.01895111-68.05617778-165.96309333-68.05617778-150.31864889 0-272.61383111 130.93546667-272.61383112 291.87413333 0 94.24782222 42.03861333 159.80657778 72.86556445 207.87882667 72.15900445 113.50016 221.4912 231.25788445 304.09045333 291.35075556l3.83089778 2.79438222c16.44088889 12.78293333 36.25187555 19.55612445 57.31328 19.55612444 19.83601778 0 39.20327111-6.43640889 56.01393778-18.58673778l1.07747555-0.79644444c0.68266667-0.51882667 2.02979555-1.50528 3.97880889-2.91953778 82.57422222-60.21461333 231.95534222-178.11911111 304.78904889-291.61244444 30.68700445-47.86631111 72.72675555-113.41710222 72.72675555-207.67288889-0.00910222-160.93184-122.07445333-291.86616889-272.11320888-291.86616889z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_video_share:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M946.42453333 410.2208L613.7792 50.2688c-12.41173333-12.41173333-34.75413333-12.41173333-47.16586667 0-7.44746667 7.44746667-9.93066667 17.37706667-9.93066666 27.30666667v193.62986666c-275.54773333 0-496.48426667 220.93546667-496.48426667 494.00213334 0 67.02506667 14.89493333 134.0512 42.2016 196.11093333 39.7184-206.04053333 235.82933333-362.43306667 454.28266667-362.43306667v193.6288c-2.48106667 9.9296 2.4832 19.8592 9.93066666 27.30666667 4.96533333 7.44746667 14.89493333 9.9296 24.82453334 9.9296s19.8592-4.96533333 24.82346666-12.41173333l330.1632-354.98666667c7.44746667-7.44746667 9.9296-14.89493333 9.9296-24.82453333s-4.96533333-19.8592-9.93066666-27.30666667z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_message_o:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M586.47272747 906.30050879l181.46521173-166.347248 2.73066667-1.91146666A322.21866667 322.21866667 0 0 0 909.1878784 473.01818133c0-178.2380608-144.4770912-322.715152-322.71515093-322.71515094h-148.94545494C259.28921173 150.30303039 114.8121216 294.78012159 114.8121216 473.01818133s144.4770912 322.715152 322.71515093 322.715152h148.94545494v110.56717546z m33.53755093 36.59093334A49.64848533 49.64848533 0 0 1 536.82424213 906.30050879V845.38181866h-99.2969696c-205.64402453 0-372.36363627-166.71961173-372.36363626-372.36363733 0-205.64402453 166.71961173-372.36363627 372.36363626-372.36363627h148.94545494c205.64402453 0 372.36363627 166.71961173 372.36363626 372.36363627 0 126.6284608-63.2025216 238.48649707-159.79364906 305.76019413l-179.03243627 164.0882432z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_chat_more:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M762.30613333 512c0 55.29173333 44.848 100.12373333 100.12373334 100.12373333 55.3088 0 100.12373333-44.832 100.12373333-100.12373333 0-55.2928-44.81493333-100.12373333-100.12373333-100.12373333-55.27573333 0.00106667-100.12373333 44.832-100.12373334 100.12373333zM61.44426667 512c0 55.29173333 44.84693333 100.12373333 100.12266666 100.12373333 55.2768 0 100.12373333-44.832 100.12373334-100.12373333 0-55.2928-44.84693333-100.12373333-100.12373334-100.12373333-55.27466667 0.00106667-100.12266667 44.832-100.12266666 100.12373333zM411.8752 512c0 55.29173333 44.81493333 100.12373333 100.12373333 100.12373333 55.2768 0 100.12266667-44.832 100.12266667-100.12373333 0-55.2928-44.84586667-100.12373333-100.12266667-100.12373333-55.3088 0.00106667-100.12373333 44.832-100.12373333 100.12373333z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_task_redact:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M463.45443555 75.09333333a48.54556445 48.54556445 0 0 1 0 97.08999112h-291.2711111v679.6333511h679.6333511v-291.2711111l0.33905778-5.67978667A48.54556445 48.54556445 0 0 1 948.90666667 560.54556445v291.2711111A97.08999111 97.08999111 0 0 1 851.81667555 948.90666667H172.18332445A97.08999111 97.08999111 0 0 1 75.09333333 851.81667555V172.18332445A97.08999111 97.08999111 0 0 1 172.18332445 75.09333333z m471.8592 14.22336a48.54556445 48.54556445 0 0 1 0 68.64327112L489.08629333 604.23623111a48.54556445 48.54556445 0 0 1-68.64213333-68.64327111l446.22734222-446.22734222a48.54556445 48.54556445 0 0 1 68.64213333 0z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_task_cancel:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M432.356 876.089H216.178c-34.134 0-68.267-28.445-68.267-68.267V216.178c0-39.822 34.133-73.956 68.267-73.956h483.555c34.134 0 68.267 34.134 68.267 68.267v256c0 17.067 22.756 34.133 39.822 34.133s45.511-11.378 45.511-34.133V199.11c0-79.644-62.577-142.222-130.844-142.222H187.733c-73.955 0-130.844 62.578-130.844 142.222v631.467c0 73.955 56.889 136.533 130.844 136.533h238.934c17.066 0 34.133-28.444 34.133-45.511 5.689-22.756-11.378-45.511-28.444-45.511z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M642.844 284.444H267.378c-22.756 0-39.822 17.067-39.822 45.512s17.066 45.51 39.822 45.51h381.155c22.756 0 39.823-17.066 39.823-45.51s-22.756-45.512-45.512-45.512zM455.111 523.378c0-22.756-5.689-45.511-17.067-45.511H244.622c-11.378 5.689-17.066 22.755-17.066 45.51s5.688 45.512 17.066 45.512h187.734c17.066 0 22.755-22.756 22.755-45.511z m-176.355 153.6c-28.445 0-51.2 17.066-51.2 45.51 0 22.756 22.755 45.512 51.2 45.512H403.91c28.445 0 51.2-17.067 51.2-45.511 0-22.756-22.755-45.511-51.2-45.511H278.756zM921.6 853.333c17.067 17.067 17.067 51.2 0 68.267s-45.511 17.067-68.267 0L739.556 807.822 625.778 921.6c-11.378 11.378-22.756 11.378-34.134 11.378-11.377 0-22.755-5.69-34.133-11.378-11.378-11.378-11.378-22.756-11.378-34.133 0-11.378 5.69-22.756 11.378-34.134L671.29 739.556 557.51 625.778c-17.067-17.067-17.067-51.2 0-68.267 17.067-17.067 45.511-17.067 68.267 0L739.556 671.29 853.333 557.51c17.067-17.067 51.2-17.067 68.267 0 17.067 17.067 17.067 51.2 0 68.267L807.822 739.556 921.6 853.333z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_trigon_up_radius:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M711.28699016 137.79059936"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M116.66084647 137.79059936"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M806.82541675 121.89214226"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M33.25329379 121.89214226"
              fill="${getColor(3, color, colors, '#000')}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M990.94361824 216.3573984"
              fill="${getColor(4, color, colors, '#000')}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M35.02987772 216.3573984"
              fill="${getColor(5, color, colors, '#000')}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M989.77417966 141.51661221"
              fill="${getColor(6, color, colors, '#000')}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
            <path
              d="M884.41859528 750.0545896c43.34908559 0 71.07101509-57.88556794 37.86180419-91.08274534L549.15839072 285.83233222c-21.39995994-21.39995994-53.22641094-21.39995994-74.62527692 0l-373.13513623 373.13951204c-32.37561672 32.36358322-7.13368463 91.08274536 37.31373242 91.08274534L884.41859528 750.0545896z"
              fill="${getColor(7, color, colors, '#000')}"
              fill-opacity="${getOpacity(7, color, colors, '#000', null)}"
            />
            <path
              d="M33.90419738 141.51661221"
              fill="${getColor(8, color, colors, '#000')}"
              fill-opacity="${getOpacity(8, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_remind:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M200.15 730.925c-6.890625 0-13.78125-1.575-20.278125-5.0203125-21.5578125-11.221875-29.925-37.8-18.703125-59.3578125l20.5734375-39.4734375v-148.640625c0-178.2703125 143.325-323.3671875 319.6265625-323.3671875 53.746875 0 106.903125 13.78125 153.759375 39.8671875 21.2625 11.8125 28.8421875 38.5875 17.0296875 59.85-11.8125 21.2625-38.5875 28.940625-59.85 17.0296875-33.7640625-18.8015625-72.1546875-28.74375-110.9390625-28.74375-127.6734375 0-231.6234375 105.6234375-231.6234375 235.3640625v159.46875c0 7.0875-1.6734375 14.0765625-5.0203125 20.3765625l-25.59375 49.021875c-7.7765625 15.0609375-23.1328125 23.625-38.98125 23.625zM501.2703125 952.3109375c-82.29375 0-149.1328125-66.9375-149.1328125-149.1328125v-21.853125c0-24.3140625 19.6875-44.0015625 44.0015625-44.0015625h382.921875l-41.146875-79.0453125c-3.2484375-6.3-5.0203125-13.2890625-5.0203125-20.3765625v-159.46875c0-13.8796875-1.18125-27.759375-3.54375-41.2453125-4.134375-23.9203125 11.9109375-46.7578125 35.83125-50.8921875 23.9203125-4.2328125 46.7578125 11.9109375 50.8921875 35.83125 3.2484375 18.4078125 4.8234375 37.3078125 4.8234375 56.30625V627.171875l53.746875 103.1625c10.63125 20.3765625 9.84375 44.296875-2.0671875 63.8859375-11.8125 19.490625-32.484375 31.10625-55.125 31.10625H648.828125c-10.7296875 71.7609375-72.7453125 126.984375-147.5578125 126.984375z m-56.9953125-126.984375c8.859375 22.8375 31.10625 39.0796875 56.9953125 39.0796875s48.1359375-16.2421875 56.9953125-39.0796875H444.275z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M501.2703125 223.578125c-24.3140625 0-44.0015625-19.6875-44.0015625-44.0015625V116.28125c0-24.3140625 19.6875-44.0015625 44.0015625-44.0015625s44.0015625 19.6875 44.0015625 44.0015625v63.2953125c0 24.3140625-19.6875 44.0015625-44.0015625 44.0015625zM178.9859375 897.9734375c-11.221875 0-22.5421875-4.33125-31.10625-12.8953125-17.2265625-17.2265625-17.2265625-45.084375 0-62.2125L806.328125 164.4171875c17.2265625-17.2265625 45.084375-17.2265625 62.2125 0 17.2265625 17.2265625 17.2265625 45.084375 0 62.2125L210.0921875 885.078125c-8.5640625 8.5640625-19.884375 12.8953125-31.10625 12.8953125z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrow_radius_up:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M714.58738714 810.80060941c-84.84428993-112.54854853-147.178871-174.88312855-209.51345205-176.61464477-62.33458107-1.73151623-141.98432231 60.60306484-209.51345102 176.61464477S6.39729077 1020.31406043 6.39729077 1020.31406043h1012.93693469s-219.90254838-96.96490354-304.74683832-209.51345102z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_playfill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M817.088 484.96l-512-323.744C295.232 154.976 282.752 154.592 272.576 160.224 262.336 165.856 256 176.608 256 188.256l0 647.328c0 11.648 6.336 22.4 16.576 28.032 4.8 2.656 10.112 3.968 15.424 3.968 5.952 0 11.904-1.664 17.088-4.928l512-323.616C826.368 533.184 832 522.976 832 512 832 501.024 826.368 490.816 817.088 484.96z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_trigon_up:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 260.62559901l-439.90520135 439.90520135h879.8104027z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_fenxiang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M899.84 565.76c-24 0-43.2 19.2-43.2 43.2v221.76c0 19.2-15.36 35.04-35.04 35.04H196.64c-19.2 0-35.04-15.36-35.04-35.04V206.24c0-19.2 15.36-35.04 35.04-35.04H392c24 0.48 43.68-18.24 44.16-42.24 0.48-24-18.24-43.68-42.24-44.16H196.64C129.44 84.8 75.2 139.04 75.2 206.72v624.96c0 67.2 54.24 121.44 121.44 121.44h624.96c67.2 0 121.44-54.24 121.44-121.44v-222.24c0.48-24-19.68-43.68-43.2-43.68z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M418.4 685.76h4.32c24 0 44.16-16.32 46.56-38.4 2.88-25.92 15.36-103.2 42.72-148.8 36.96-61.92 106.08-177.12 290.4-198.72 3.36-0.48 5.76-1.92 9.12-2.88L732.32 444.8c-11.52 20.64-1.44 45.6 22.08 56.16 6.72 2.88 13.44 4.32 20.16 4.32 17.28 0 34.56-9.12 42.72-24L939.2 253.76c5.28-10.08 6.24-21.6 1.92-32.16-4.8-11.04-13.44-19.2-24-24l-254.4-108.48c-23.52-10.08-51.36-0.96-62.88 19.68s-1.44 46.08 22.08 56.16l132.96 56.64c-206.4 37.92-289.92 176.16-326.4 237.12-41.76 69.6-52.8 176.64-53.28 180.96-1.44 23.52 17.28 43.68 43.2 46.08z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_shouchang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512.28125 172.18847656L423.14257812 354.33300781c-11.71582031 23.94140625-33.3984375 41.37011719-59.08007812 47.76855469l-5.56347656 1.1953125-204.42480469 37.37988281 144.5625 135.51855469a89.98681641 89.98681641 0 0 1 27.73828125 76.90429688l-0.90527344 5.68652343-37.46777343 195.31933594 184.06054687-91.84570313a90.05097656 90.05097656 0 0 1 75.14648438-2.41699218l5.50195312 2.54003906 182.37304688 91.74902344-36.19335938-195.90820313a89.99384766 89.99384766 0 0 1 22.59667969-77.65136718l4.0078125-4.04296876 145.06347656-137.35546874-203.92382813-35.83300782a89.96835938 89.96835938 0 0 1-62.56054687-44.00683594l-2.68066406-5.0625-89.11230469-182.08300781zM512.27246094 76.0625c33.42480469 0 64.49414063 20.00390625 77.52832031 49.80761719l92.43457031 188.83300781 206.63085938 36.33398438c30.97265625 4.51757813 56.72460938 25.89257813 67.17480468 55.23925781l1.67871094 5.26464844c10.20410156 31.49121094 1.87207031 66.07617188-21.53320312 89.37597656L787.39648438 641.87597656l37.47656249 202.79882813c5.67773438 30.52441406-5.34375 61.33886719-28.91601562 81.87890625l-4.56152344 3.7265625a79.22460938 79.22460938 0 0 1-50.47558594 17.6484375c-12.67382813 0-26.91210938-3.66503906-40.11328125-10.30078125L512.27246094 842.78515625 322.578125 937.47851563c-10.30078125 5.51074219-21.8671875 8.78027344-33.80273438 9.60644531l-5.98535156 0.20214843a84.26074219 84.26074219 0 0 1-50.625-16.67285156c-26.55175781-20.03027344-40.1484375-54.72949219-33.87304687-86.32617187l38.79492187-202.43847657L88.39355469 502.44628906c-21.53320313-21.94628906-30.62109375-53.15625-24.5390625-83.10058593l1.72265625-6.99609376c10.81054688-32.58984375 37.62597656-55.42382813 70.14550781-59.80078125l206.59570313-37.78417968 92.72460937-189.43066407C449.93164062 95.33691406 480.22753906 76.0625 512.27246094 76.0625z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_laba:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M265.107862 419.124195L469.61706 301.63865l0.0289 423.403129-212.308454-123.821762"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M215.337484 419.958669h75.176661v180.598465H215.337484z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M596.099384 363.964059c52.004671 38.170836 83.293811 84.500365 87.574551 138.049354 4.670884 58.266834-33.812428 109.449675-87.574551 151.22753-14.119218 10.970977 8.693334 27.425636 22.863126 16.404085 58.055506-45.108525 96.894643-98.189702 97.315493-160.502467 0.41543-61.742-37.941446-118.002124-97.315493-161.580781-14.594253-10.7163-37.444736 5.700429-22.863126 16.402279z"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M552.11794 445.372176C572.71968 462.231429 598.649766 484.736923 599.664862 512.966327c0.935622 25.960792-24.024525 49.867913-44.891779 61.828699-14.679146 8.418789-1.461232 31.110324 13.254039 22.66986 27.66767-15.858607 51.428487-42.771277 56.984417-74.708849 6.914208-39.745859-26.182957-72.915273-54.327469-95.948184-12.984912-10.629602-31.675671 7.83538-18.56613 18.564323z"
              fill="${getColor(3, color, colors, '#000')}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_play:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M880 112H144c-17.7 0-32 14.3-32 32v736c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V144c0-17.7-14.3-32-32-32zM641.7 520.8L442.3 677.6c-7.4 5.8-18.3 0.6-18.3-8.8V355.3c0-9.4 10.9-14.7 18.3-8.8l199.4 156.7c5.7 4.5 5.7 13.1 0 17.6z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_setting:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M635.6 932c-23.8 0-47.2-10.1-62.6-26.9-15.3-16.7-46.7-39.9-63.1-39.9-16.2 0-47.9 23.1-62.7 39.1-15.4 16.6-38.6 26.4-62.2 26.4-11.5 0-22.5-2.2-32.6-6.7l-1.1-0.5-2.7-1.3-101.1-56.1-2.7-1.7-1-0.7c-15-10.4-26.1-26-31.1-43.9-5-17.8-3.7-36.8 3.7-53.4 2.6-6 6.6-18.9 6.6-27.9 0-41-33.7-74.4-75.2-74.4h-4.2c-32.5 0-59.3-25.7-66.6-64-0.9-5-9.2-49.4-9.2-86.2 0-36.6 8.2-81.2 9.2-86.2 7.4-38.9 34.5-64.6 67.5-64.1h3.3c41.5 0 75.2-33.4 75.2-74.4 0-10.1-4.9-23.8-6.7-27.9-7.4-16.7-8.7-35.6-3.6-53.5s16.1-33.5 31.2-43.9l1.1-0.8 2.8-1.7 106.7-58.2 2.9-1.4 1.1-0.5c9.9-4.2 20.7-6.4 32-6.4 23.7 0 46.3 9.4 61.9 25.7 15.1 15.6 45.8 37.4 61.8 37.4 15.8 0 46.4-21.4 61.4-36.7 15.5-16 37.9-25.2 61.4-25.2 11.5 0 22.5 2.2 32.6 6.6l1.3 0.6 2.6 1.3 103.1 56.9 2.9 1.8 1 0.7c15 10.4 26 26 31 43.8 5 17.9 3.7 36.8-3.7 53.5-2.6 6-6.6 18.9-6.6 27.9 0 41 33.7 74.4 75.2 74.4h4.3c32.6 0 59.2 25.6 66.5 64.1 0.9 4.9 9.2 49.4 9.2 86.2 0 38.2-8.8 84.4-9.2 86.3-7.4 38.7-34.5 64.4-67.5 64h-3.3c-41.5 0-75.2 33.4-75.2 74.4 0 9 4.1 21.8 6.7 27.9 7.4 16.6 8.6 35.6 3.6 53.4-5 17.9-16.1 33.5-31.1 43.9l-1 0.7-2.8 1.8-104.8 57.5-2.7 1.3-1.1 0.5c-10.3 4.3-21.1 6.4-32.4 6.4zM509.8 801.3c54 0 108 58.1 110.3 60.6l0.1 0.1c3.4 3.7 9.4 6.1 15.4 6.1 2.4 0 4.6-0.4 6.6-1.2l102-55.9c5.6-4.1 7.9-12.4 5.1-18.6l-0.2-0.4c-2-4.6-11.9-29-11.9-53.4 0-76.3 62.4-138.4 139.2-138.4h2.9c1.2-1.3 3.7-4.9 5-12 0.1-0.5 8.1-42.7 8.1-74.2 0-25.2-5.3-59.6-8.1-74.2-1.4-7.1-3.8-10.8-5-12h-2.9c-76.8 0-139.2-62.1-139.2-138.4 0-26.4 11.6-52.7 12.1-53.8 2.8-6.3 0.5-14.6-5.1-18.7l-100.3-55.3c-2-0.8-4.3-1.2-6.9-1.2-6.8 0-12.7 2.9-15.5 5.8-2.3 2.3-55.3 56.1-107.3 56.1-52.4 0-105.7-54.8-107.9-57.1l-0.1-0.1c-3.5-3.6-9.6-6-15.7-6-2.5 0-4.8 0.4-6.8 1.2l-103.8 56.6c-5.5 4-7.8 12.3-5.1 18.5 0.5 1 12.1 27.3 12.1 53.8 0 76.3-62.4 138.4-139.2 138.4h-2.9c-1.2 1.3-3.6 5-5 12-0.3 1.7-8.1 42.9-8.1 74.2 0 25.2 5.3 59.6 8.1 74.3 1.4 7.1 3.8 10.7 5 12h2.9c76.8 0 139.2 62.1 139.2 138.4 0 25.8-10.9 50.9-12.1 53.7-2.8 6.3-0.6 14.6 5 18.7l98.3 54.6c1.9 0.8 4.2 1.2 6.7 1.2 5.9 0 11.9-2.3 15.3-6 2.3-2.3 55.9-59.4 109.7-59.4z m370.6-201.2c0.1 0 0 0 0 0z m0.1-172.5z m-737.2 0c0.1 0 0.1 0 0 0zM512 674.4c-88.7 0-160.8-72.1-160.8-160.8 0-88.7 72.1-160.8 160.8-160.8S672.8 425 672.8 513.6c0 88.6-72.1 160.8-160.8 160.8z m0-257.7c-53.4 0-96.8 43.4-96.8 96.8s43.4 96.8 96.8 96.8 96.8-43.4 96.8-96.8-43.4-96.8-96.8-96.8z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_qr_code:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M841.728 550.4c34.816 0 62.976 28.16 62.976 62.976v245.76c0 34.816-28.16 62.976-62.976 62.976H619.52c-34.816 0-62.976-28.16-62.976-62.976v-245.76c0-34.816 28.16-62.976 62.976-62.976h222.208zM168.96 688.64c21.504 0 39.424 17.92 39.424 39.424v146.944c0 21.504-17.92 39.424-39.424 39.424s-39.424-17.92-39.424-39.424v-146.944c0-21.504 17.92-39.424 39.424-39.424z m272.384 0c21.504 0 39.424 17.92 39.424 39.424v146.944c0 21.504-17.92 39.424-39.424 39.424s-39.424-17.92-39.424-39.424v-146.944c0-21.504 17.408-39.424 39.424-39.424z m-136.192 34.304c21.504 0 39.424 17.92 39.424 39.424v78.336c0 21.504-17.92 39.424-39.424 39.424s-39.424-17.92-39.424-39.424v-78.336c0-22.016 17.408-39.424 39.424-39.424z m520.704-94.208H634.88v214.528h190.976v-214.528z m-384.512-78.336c21.504 0 39.424 17.92 39.424 39.424s-17.92 39.424-39.424 39.424H168.96c-21.504 0-39.424-17.92-39.424-39.424s17.92-39.424 39.424-39.424h272.384z m-26.112-450.56c34.816 0 62.976 28.16 62.976 62.976v245.76c0 34.816-28.16 62.976-62.976 62.976H192.512c-34.816 0-62.976-28.16-62.976-62.976v-245.76c0-34.816 28.16-62.976 62.976-62.976h222.72z m426.496 0c34.816 0 62.976 28.16 62.976 62.976v245.76c0 34.816-28.16 62.976-62.976 62.976H619.52c-34.816 0-62.976-28.16-62.976-62.976v-245.76c0-34.816 28.16-62.976 62.976-62.976h222.208zM399.36 178.176H207.872v214.528h190.976c0.512 0.512 0.512-214.528 0.512-214.528z m426.496 0H634.88v214.528h190.976V178.176z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_history:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M924.279875 335.3795c97.2405 208.868625 7.441875 457.42725-201.42675 555.163875-156.279375 72.930375-340.837875 42.170625-465.36525-77.3955-16.372125-16.372125-16.86825-42.66675 0-59.038875 16.372125-16.372125 41.6745-16.86825 57.5505-0.99225 99.225 95.752125 248.0625 120.06225 372.589875 61.5195 167.194125-77.891625 239.13225-276.341625 161.240625-443.53575-78.38775-167.194125-276.83775-239.13225-444.031875-161.240625-77.3955 35.721-137.426625 99.225-169.178625 178.605l57.054375 4.465125c11.907 0.99225 19.845 11.410875 18.85275 22.325625-0.496125 3.472875-1.488375 7.441875-3.472875 10.418625l-112.12425 159.256125c-8.434125 12.403125-22.82175 18.85275-37.7055 17.8605-14.387625-0.99225-27.286875-10.91475-32.248125-23.814l-64.49625-175.62825c-3.472875-10.91475 1.488375-22.82175 12.403125-26.79075 2.480625-0.99225 5.9535-1.488375 8.93025-0.99225l66.976875 4.96125c36.217125-109.643625 115.597125-198.45 219.783375-248.0625 208.868625-96.24825 456.931125-5.9535 554.66775 202.915125z m-399.380625-74.41875c21.8295 0 40.186125 16.86825 41.6745 38.69775v208.868625l125.0235 71.938125c18.85275 10.91475 25.7985 34.232625 17.364375 54.077625l-1.488375 2.480625c-10.91475 18.85275-34.232625 25.7985-54.077625 17.364375l-2.480625-1.488375-135.93825-77.3955c-18.356625-10.91475-30.263625-29.7675-31.255875-50.60475V302.63525c-0.496125-22.82175 17.8605-41.6745 41.178375-41.6745z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_vpn:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M901.12 612.352c2.048-15.872 3.584-32.256 3.584-48.64 0-159.232-96.768-302.08-243.712-361.984-3.072-34.304-17.408-66.56-41.984-90.112-57.344-58.368-151.04-58.88-209.408-0.512-24.576 24.576-39.936 56.32-43.008 91.136-169.472 67.584-268.8 244.736-237.568 425.472-64 51.2-73.728 144.384-22.528 208.384C135.168 870.4 177.664 890.88 222.72 890.88c20.992 0 41.472-4.608 60.416-12.8 66.56 49.152 147.968 76.288 230.912 76.288 89.088 0 176.128-30.72 245.76-87.04 15.872 5.632 32.768 8.704 49.152 8.704 81.92 0 148.48-66.56 148.48-148.48-0.512-44.544-20.992-87.552-56.32-115.2z m-387.072-467.456c18.432 0 36.352 7.68 49.664 20.992 27.136 27.136 27.648 72.192 0 99.328-13.312 13.312-31.232 20.48-49.664 20.48-38.912-2.048-68.608-35.84-66.56-74.752 2.048-35.328 31.232-64.512 66.56-66.048zM222.72 812.544c-38.912-2.048-68.608-35.84-66.56-74.752 2.048-35.84 30.72-65.024 66.56-66.56 38.912-2.048 72.192 27.648 74.752 66.56 2.048 38.912-27.648 72.192-66.56 74.752-3.584 0.512-6.144 0.512-8.192 0z m290.816 63.488c-59.904 0-118.784-17.408-169.472-50.176 46.08-67.072 29.184-159.232-37.888-205.824-25.088-16.896-54.272-26.112-83.968-26.112-6.144 0-12.8 0.512-19.456 1.536-1.024-10.752-2.048-21.504-2.048-32.768 0.512-120.32 70.656-230.912 180.224-282.624 25.088 50.688 76.8 83.456 133.12 82.944 56.32 0 108.032-32.256 133.12-82.944 109.568 51.712 179.712 162.304 179.712 283.136v16.896c-5.632-0.512-11.776-1.024-17.408-1.024-81.408-1.024-148.992 64-150.016 145.92-0.512 34.816 11.264 68.608 33.28 95.744-52.224 36.352-114.688 56.32-178.688 56.32l-0.512-1.024z m294.912-77.312c-38.912 2.048-72.192-27.648-74.752-66.56-2.048-38.912 27.648-72.192 66.56-74.752h7.68c38.912 2.048 68.608 35.84 66.56 74.752-1.024 35.84-29.696 64.512-66.048 66.56z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_id_card:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M880.24879167 175.70602117H142.01479167c-44.155125 0-79.38 35.72099999-79.38 79.38V769.07152117c0 44.155125 35.72099999 79.38 79.38 79.38h738.234c44.155125 0 79.38-35.72099999 79.38-79.38V255.08602117c0.496125-44.155125-35.72099999-79.38-79.38-79.38z m0 570.54375c0 11.90699999-10.418625 21.333375-21.8295 21.333375H161.36366667c-12.403125 0-21.8295-9.9225-21.8295-21.333375V277.90777117c0-11.90699999 10.418625-21.333375 21.8295-21.333375h696.5595c12.403125 0 21.8295 9.9225 21.8295 21.333375v468.838125h0.496125zM390.07729167 341.41177117h-163.72125c-13.8915 0-25.7985 14.88375-25.7985 33.7365 0 18.356625 11.410875 33.7365 25.7985 33.7365h163.72125c14.387625 0 25.7985-14.88375 25.7985-33.7365s-11.410875-33.7365-25.7985-33.7365z m342.822375 169.67475c22.325625-22.325625 36.217125-54.077625 36.217125-88.31025 0-68.46525-56.062125-124.527375-124.527375-124.527375s-124.527375 56.062125-124.527375 124.527375c0 32.74425 12.89925 62.015625 33.240375 84.837375-59.53499999 31.255875-100.713375 92.775375-100.713375 165.209625 0 17.364375 13.8915 31.255875 31.255875 31.255875s31.255875-13.8915 31.255875-31.255875c0-68.46525 56.062125-124.527375 124.527375-124.527375s124.527375 56.062125 124.527375 124.527375c0 17.364375 13.8915 31.255875 31.255875 31.255875s31.255875-13.8915 31.255875-31.255875c0-69.4575-38.201625-128.9925-93.767625-161.73675z m-88.31025-150.325875c34.232625 0 62.51175 27.78300001 62.51175 62.51175s-28.279125 62.51175-62.51175 62.51175c-34.232625 0-62.51175-27.78300001-62.51175-62.51175 0.496125-34.232625 28.279125-62.51175 62.51175-62.51175z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M390.07729167 478.34227117h-163.72125c-13.8915 0-25.7985 14.88375-25.7985 33.7365 0 18.356625 11.410875 33.7365 25.7985 33.7365h163.72125c14.387625 0 25.7985-14.88375 25.7985-33.7365 0-18.356625-11.410875-33.7365-25.7985-33.7365zM390.07729167 610.80764617h-163.72125c-13.8915 0-25.7985 14.88375-25.7985 33.7365s11.410875 33.7365 25.7985 33.7365h163.72125c14.387625 0 25.7985-14.88375 25.7985-33.7365s-11.410875-33.7365-25.7985-33.7365z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_community:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M771.35 326.15c0-143.85-116.55-260.4-260.4-260.4S250.55 182.3 250.55 326.15c0 86.94 42.63 164.01 108.15 211.26-0.42 0.21-0.735 0.315-0.945 0.42-46.935 19.845-89.04 48.3-125.265 84.63-36.225 36.225-64.575 78.435-84.42 125.475C128.645 793.925 118.25 842.75 117.2 892.94c-0.105 4.725 3.675 8.61 8.4 8.61h62.895c4.515 0 8.295-3.675 8.4-8.19 2.1-81.06 34.545-156.975 91.98-214.515C348.2 619.31 426.95 586.55 510.95 586.55c143.85 0 260.4-116.55 260.4-260.4zM510.95 506.75c-99.75 0-180.6-80.85-180.6-180.6s80.85-180.6 180.6-180.6 180.6 80.85 180.6 180.6-80.85 180.6-180.6 180.6z m110.25 232.05h277.2c4.62 0 8.4-3.78 8.4-8.4v-58.8c0-4.62-3.78-8.4-8.4-8.4H713.075l49.56-63.105c1.155-1.47 1.785-3.36 1.785-5.145 0-4.62-3.78-8.4-8.4-8.4h-76.23c-5.145 0-9.975 2.415-13.23 6.405l-71.925 91.455c-4.62 5.88-7.14 13.23-7.14 20.79 0.105 18.585 15.12 33.6 33.705 33.6z m252 67.2H596c-4.62 0-8.4 3.78-8.4 8.4v58.8c0 4.62 3.78 8.4 8.4 8.4h185.325l-49.56 63.105c-1.155 1.47-1.785 3.36-1.785 5.145 0 4.62 3.78 8.4 8.4 8.4h76.23c5.145 0 9.975-2.415 13.23-6.405l71.925-91.455c4.62-5.88 7.14-13.23 7.14-20.79-0.105-18.585-15.12-33.6-33.705-33.6z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_link:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M619.61135 398.2934c-7.1505-7.15155001-14.7609-13.66155-22.64430001-19.6203l-73.25219999 73.16084999c8.52599999 5.04315 16.5942 11.0943 23.92845001 18.42855001l3.66764999 3.6666c46.8489 46.8489 46.8489 123.12825 0 169.9782L351.44659999 843.86300001c-46.8489 46.84995-123.1272 46.84995-169.97715 0l-3.66764999-3.6666c-46.8489-46.8489-46.8489-123.12825 0-169.97820001l90.49005001-90.489c-15.67755-38.78070001-23.1966-80.1297-22.46160001-121.38525l-139.9965 139.9965c-86.27114999 86.2722-86.27114999 227.5518 0 313.82295l3.66765 3.66765c86.36355 86.2722 227.5518 86.2722 313.82295 0L623.279 715.87535c86.2722-86.2722 86.2722-227.5518 0-313.82400001l-3.66765-3.75794999z m295.58025001-288.0633l-3.6666-3.6666c-86.2722-86.2722-227.55285-86.2722-313.82400001 0L397.65185 306.5192c-86.2722 86.2722-86.2722 227.55285 0 313.824l3.66765001 3.6666c7.15155001 7.15155001 14.76195 13.66155 22.64534999 19.7106l73.1619-73.16084999c-8.52705-5.04315-16.5942-11.0943-23.9295-18.4275l-3.66764999-3.76005001c-46.8489-46.8489-46.8489-123.12825 0-169.97715l199.95674998-199.95675c46.8489-46.8489 123.12825-46.8489 169.97610001 0l3.66764999 3.6666c46.8489 46.8489 46.8489 123.12825 0 169.97715l-90.48899999 90.49005c15.6765 38.78070001 23.19555 80.1297 22.4616 121.38525L915.19265 424.052c86.27114999-86.36355 86.27114999-227.55285 0-313.824l-0.00104999 0.0021z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_right:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M863.5 265.499a8 8 0 0 0-11.314 0L439.274 678.411 263.912 503.049a8 8 0 0 0-11.314 0l-45.255 45.255a8 8 0 0 0 0 11.314l181.019 181.019 16.971 16.97 0.078 0.078 11.236 11.236c12.496 12.497 32.758 12.497 45.254 0l446.853-446.853a7.999 7.999 0 0 0 0-11.314L863.5 265.499z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_like:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M884.876 423.143H646.97C739.156 82.68 583.454 65.29 583.454 65.29c-65.993 0-52.313 52.182-57.303 60.882 0 166.502-176.85 296.971-176.85 296.971v472.172c0 46.608 63.517 63.394 88.433 63.394h357.452c33.641 0 61.036-88.224 61.036-88.224 88.434-300.706 88.434-390.178 88.434-390.178 0.001-62.128-59.78-57.164-59.78-57.164z m0 0M251.671 423.3H109.215c-29.42 0-29.873 28.896-29.873 28.896l29.42 476.203c0 30.309 30.361 30.309 30.361 30.309H262.42c25.686 0 25.46-20.05 25.46-20.05V459.411c0-36.574-36.209-36.111-36.209-36.111z m0 0"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_share:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M853.333333 533.333333a32 32 0 0 1 64 0v266.666667c0 64.8-52.533333 117.333333-117.333333 117.333333H224c-64.8 0-117.333333-52.533333-117.333333-117.333333V256c0-64.8 52.533333-117.333333 117.333333-117.333333h277.333333a32 32 0 0 1 0 64H224a53.333333 53.333333 0 0 0-53.333333 53.333333v544a53.333333 53.333333 0 0 0 53.333333 53.333333h576a53.333333 53.333333 0 0 0 53.333333-53.333333V533.333333z m-42.058666-277.333333l-89.792-95.402667a32 32 0 0 1 46.613333-43.861333l140.544 149.333333C927.861333 286.485333 913.376 320 885.333333 320H724.704C643.029333 320 576 391.210667 576 480v192a32 32 0 1 1-64 0V480c0-123.296 94.784-224 212.704-224h86.570667z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_heart_plus:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M923.84 610.8416h-128.7936V490.5344c0-24.96-19.968-44.928-44.928-44.928-25.4592 0-45.9264 20.9664-45.9264 46.4256V613.8368h-125.2992c-23.9616 0.4992-43.4304 19.4688-43.4304 43.4304 0 23.9616 19.4688 43.4304 43.4304 43.4304h125.2992v113.8176c1.4976 24.96 23.4624 43.9296 48.4224 41.9328 22.464-1.4976 40.4352-19.4688 41.9328-41.9328v-116.8128h128.7936c23.9616 0 43.4304-19.4688 43.4304-43.4304 0-23.9616-19.4688-43.4304-43.4304-43.4304h0.4992z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M524.9792 812.5184l-12.48 11.9808L210.9824 531.968C168.0512 493.5296 143.5904 439.616 142.592 382.208c0.4992-50.4192 20.9664-98.8416 56.9088-134.2848 33.9456-35.9424 80.8704-56.4096 129.792-56.9088 75.8784 1.9968 142.7712 49.4208 170.7264 119.808 0.9984 2.9952 3.4944 5.4912 6.9888 6.4896 5.9904 2.496 12.9792-0.4992 15.4752-6.4896 27.456-70.8864 94.848-118.8096 170.7264-120.8064 48.9216 0 95.8464 19.4688 130.2912 53.9136 34.944 35.9424 54.4128 83.8656 53.9136 133.7856 0 19.968-2.9952 39.936-8.9856 58.9056-7.9872 16.4736-14.976 33.9456-20.9664 51.4176-1.9968 18.9696 6.4896 37.9392 22.464 48.4224 14.976 6.9888 32.448 5.4912 45.9264-3.9936 19.4688-14.976 29.4528-47.424 36.4416-69.888 9.4848-28.4544 14.4768-57.9072 14.4768-87.8592-1.9968-72.384-31.9488-140.7744-83.3664-191.6928-49.92-50.4192-117.8112-78.8736-188.6976-78.8736-67.8912-0.4992-133.7856 25.4592-182.7072 72.384-49.92-48.4224-117.312-74.3808-186.7008-72.384-71.3856 0-140.2752 28.9536-189.696 80.3712-51.4176 52.416-79.872 122.304-79.3728 195.1872 0 81.3696 34.944 159.2448 96.3456 213.1584l302.5152 304.0128c14.976 14.976 35.9424 22.9632 56.9088 22.464 19.4688-0.4992 37.9392-7.9872 52.416-20.9664l24.96-23.9616a45.4272 45.4272 0 0 0 12.48-31.4496c0-11.4816-4.992-22.9632-13.9776-30.4512-17.472-15.9744-44.928-16.4736-62.8992 0z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_heart:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 62C263.47167969 62 62 263.48046875 62 512s201.46289063 450 450 450 450-201.46289063 450-450S760.51953125 62 512 62z m236.92675781 509.6953125l-131.0625 121.2890625L517.18554688 785.63867188 424.55761719 694.17089844l-126.43066407-110.7421875a155.56640625 155.56640625 0 0 1-56.76855468-120.28710938c0-85.9921875 69.72363281-155.65429688 155.70703125-155.65429687a155.18847656 155.18847656 0 0 1 120.12011719 56.61914062 155.32910156 155.32910156 0 0 1 120.18164062-56.65429687c85.9921875 0 155.70703125 69.66210938 155.70703125 155.65429687a154.95117188 154.95117188 0 0 1-44.14746094 108.58886719z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_clock:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M827.8 196.8c-171.8-177-454-177-631.8 0-79.8 82.2-128.8 196-128.8 316 0 120.2 49 233.8 128.8 316 159.4 158 404.8 177 588.8 38l67.4-56.8c153.4-177 141.2-448.8-24.4-613.2z m-319 670c-184 6.4-343.4-151.8-349.6-354 6.2-196 165.6-354 355.8-354 190.2 0 349.6 158 349.6 354-6.2 196-159.6 354-355.8 354zM699 506.6H545.6v-139c0-31.6-24.6-50.6-49-50.6-24.6 0-49 25.2-49 44.2v189.6c0 31.6 24.6 50.6 49 50.6 3.2 0 6.2-0.4 9.2-0.8 1 0.4 2 0.6 3 0.8H699c24.6 0 43-19 43-44.2 0-19-6.2-31.6-18.4-44.2-6.2-6.4-18.6-6.4-24.6-6.4z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_map:
        svgXml = '''
          <svg viewBox="0 0 1027 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M475.29863281 620.25048828c28.16542969 27.03955078 46.75517578 26.47617188 74.92148438 0a652.88847656 652.88847656 0 0 0 157.72939453-209.55498047 1017.92021484 1017.92021484 0 0 0 36.05273437-117.73388672A233.21425781 233.21425781 0 0 0 546.83984375 67.63291016a225.32783203 225.32783203 0 0 0-248.98710938 149.84384765 246.17109375 246.17109375 0 0 0 10.13994141 173.5022461 675.984375 675.984375 0 0 0 167.30595703 229.27148437z m43.93916016-465.86601562a134.07011719 134.07011719 0 0 1 127.30957031 149.84296875 411.78691406 411.78691406 0 0 1-101.96015625 204.48632812 41.12226563 41.12226563 0 0 1-61.96552734 0A414.60380859 414.60380859 0 0 1 378.40625 289.01708984a133.50673828 133.50673828 0 0 1 140.83066406-134.63349609z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M963.69628906 359.99667969a216.87890625 216.87890625 0 0 0 0-27.03955078 43.93916016 43.93916016 0 0 0-65.90742187-38.30625 614.01884766 614.01884766 0 0 0-56.33261719 30.98320312 49.00869141 49.00869141 0 0 0-31.54570313 56.33173828 43.37578125 43.37578125 0 0 0 47.8828125 34.36259766 33.79921875 33.79921875 0 0 1 14.08271485 5.63378906v337.9921875L656.68730469 872.61699219c-72.10546875-42.24902344-139.13964844-78.30175781-206.17470703-112.10097657-112.66435547-56.33173828-74.92148438-56.33173828-184.76894532 0l-112.66435547 60.83876954V535.1890625c0-40.55888672-2.81689453-77.73837891 45.06591797-98.01738281a40.55888672 40.55888672 0 0 0 14.64609375-60.27539063 42.24902344 42.24902344 0 0 0-56.33261718-15.20947265c-19.715625 8.44980469-37.74199219 20.84238281-56.33173829 30.98144531A61.40214844 61.40214844 0 0 0 62.38496094 456.32480469v423.61699218c0 60.27539063 28.72880859 75.48486328 83.93466797 46.75605469s118.29726563-61.96552734 175.75488281-95.20136719a60.83789063 60.83789063 0 0 1 69.28945312 0c73.79472656 41.12226563 149.84296875 78.30175781 225.32783203 118.86064454a75.48486328 75.48486328 0 0 0 80.55439454 0c72.66796875-39.43212891 146.46357422-77.175 220.82167968-112.66435547a73.23134766 73.23134766 0 0 0 45.62929688-77.73837891V359.99667969z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_voice_call:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M542.72 121.856l20.992 76.288c82.432-27.136 176.128-7.68 241.664 57.344 60.416 60.416 76.8 155.648 57.856 233.472 18.944 7.68 50.176 16.896 74.24 26.624 27.136-107.008 8.704-232.96-75.776-316.928-86.016-86.528-209.408-111.104-318.976-76.8z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M527.36 187.392c15.872 15.872 40.448 15.872 55.808 0 15.872-15.872 15.872-40.448 0-55.808-15.872-15.872-40.448-15.872-55.808 0-15.872 15.36-15.872 39.936 0 55.808zM732.16 479.744c15.872 15.872 40.448 15.872 55.808 0 15.872-15.872 15.872-40.448 0-55.808-15.872-15.872-40.448-15.872-55.808 0s-15.36 39.936 0 55.808zM585.728 332.8c15.872 15.872 40.448 15.872 55.808 0 15.872-15.872 15.872-40.448 0-55.808-15.872-15.872-40.448-15.872-55.808 0-15.872 14.848-15.872 40.448 0 55.808zM871.936 531.968c15.872 15.872 40.448 15.872 55.808 0 15.872-15.872 15.872-40.448 0-55.808-15.872-15.872-40.448-15.872-55.808 0-15.36 15.36-15.36 40.96 0 55.808z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M605.184 265.728l13.312 77.824c27.136-3.584 55.296 5.12 76.288 25.6 19.968 19.968 29.184 48.128 26.112 74.752l61.44 16.384 1.536-1.536c4.608-4.608 10.752-6.144 15.872-4.608 6.144-50.176-10.24-102.912-48.64-141.824-39.424-37.888-94.72-53.76-145.92-46.592z m155.136 617.472C431.104 883.2 163.84 615.936 163.84 286.72c0-12.8 0.512-25.6 1.024-38.4H84.48c-0.512 12.8-1.024 25.088-1.024 38.4 0 373.76 303.104 675.84 676.864 675.84h8.192v-78.848l-8.192-0.512z"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M256 413.696c0 21.504 17.408 39.424 39.424 39.424s39.424-17.408 39.424-39.424-17.408-39.424-39.424-39.424-39.424 17.408-39.424 39.424zM564.736 747.52c0 21.504 17.408 39.424 39.424 39.424s39.424-17.408 39.424-39.424c0-21.504-17.408-39.424-39.424-39.424s-39.424 17.408-39.424 39.424zM857.6 815.616c0 21.504 17.408 39.424 39.424 39.424 21.504 0 39.424-17.408 39.424-39.424 0-21.504-17.408-39.424-39.424-39.424-22.016 0-39.424 17.408-39.424 39.424z"
              fill="${getColor(3, color, colors, '#000')}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M273.408 74.752c-104.96 0-189.952 84.992-189.952 189.952 0 17.92 2.56 35.84 7.68 52.224l71.68-51.2v-1.024c0-60.928 49.664-111.104 111.104-111.104s111.104 49.664 111.104 111.104c0 55.296-40.96 101.888-94.208 109.568l-1.536 3.584-13.312 14.848 5.12 61.952c101.376-4.096 182.272-87.04 182.272-189.44 0-105.472-84.992-190.464-189.952-190.464z"
              fill="${getColor(4, color, colors, '#000')}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M587.776 696.32C467.968 643.584 374.784 539.648 337.92 412.16l-66.56 1.024-7.68 8.704-6.144 3.072c46.08 167.424 171.008 301.056 331.776 358.912l-1.536-87.552z m218.624 225.792c0 18.944-17.408 39.424-39.424 39.424-21.504 0-39.424-17.408-39.424-39.424 0-21.504 17.408-39.424 39.424-39.424 22.016 0.512 39.424 17.92 39.424 39.424z"
              fill="${getColor(5, color, colors, '#000')}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M752.64 583.68c-98.816 0-180.224 75.776-188.928 172.032l80.384-2.048c9.728-51.2 54.272-90.624 109.056-90.624 60.928 0 111.104 49.664 111.104 111.104 0 10.752-1.536 20.992-4.608 31.232l26.112 3.584 49.664 17.92c5.12-16.384 7.68-34.816 7.68-52.736-0.512-105.984-85.504-190.464-190.464-190.464z"
              fill="${getColor(6, color, colors, '#000')}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_time:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M710.49307307 523.18270853H517.59135427V313.50692693c0-22.36541707-11.18270853-36.34380225-27.95677134-36.34380127-13.97838519 0-27.95677036 8.38703091-27.95677036 33.54812463v240.4282286c0 13.97838519 5.59135427 27.95677036 27.95677036 27.95677134h218.06281251c19.56973944 0 33.54812463-11.18270853 36.34380225-27.95677133 0-13.97838519-13.97838519-27.95677036-33.54812462-27.95677036zM512 64.69166741C265.98041713 64.69166741 64.69166741 265.98041713 64.69166741 512s201.28874971 447.30833259 447.30833259 447.30833259 447.30833259-201.28874971 447.30833259-447.30833259-201.28874971-447.30833259-447.30833259-447.30833259z m0 838.70312349c-215.26713489 0-391.39479089-176.12765601-391.39479089-391.3947909s176.12765601-391.39479089 391.39479089-391.39479089 391.39479089 176.12765601 391.39479089 391.39479089-176.12765601 391.39479089-391.39479089 391.3947909z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_mass:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M899.584 254.976h-1.024c-3.072-0.512-5.632-0.512-8.704-0.512-27.648 0-50.688 16.384-60.416 43.008l-50.176 155.648c-8.192-3.072-16.896-4.608-26.112-4.608-14.336 0-28.672 3.584-43.008 11.264l-163.328 87.04c-13.824 7.168-25.6 17.92-35.328 31.232-9.728-13.312-22.016-24.064-35.328-31.232L312.32 459.264c-14.336-7.68-28.672-11.264-43.008-11.264-9.216 0-17.92 1.536-26.112 4.608L193.024 296.96c-9.216-26.624-32.256-43.008-60.416-43.008-3.072 0-5.632 0-8.704 0.512H122.88c-26.624 4.608-55.296 29.696-55.808 74.24v0.512l7.168 193.536c0 29.696 9.728 60.928 28.672 91.648 10.24 16.384 23.04 30.208 35.328 43.52l0.512 0.512 99.328 95.744c18.432 17.92 36.352 34.304 48.128 53.76l43.008 69.632c5.632 9.216 15.36 14.848 25.6 14.848 5.632 0 11.264-1.536 16.384-4.608 14.848-9.216 18.944-27.136 9.728-41.984L336.384 773.12c-15.36-25.088-35.84-45.056-56.832-65.536l-98.304-95.232c-29.184-29.184-46.08-64-47.104-94.72l-7.168-193.536c0-3.584 0.512-9.728 5.632-10.752h0.512c0 0.512 0.512 0.512 0.512 1.024l56.32 176.128 3.072 13.824c3.072 20.48 8.192 43.008 37.888 70.656 4.096 5.632 9.728 9.728 12.8 11.776l57.344 45.568c7.168 6.144 14.336 7.168 19.456 7.168 8.704 0 16.896-4.096 22.528-11.264 11.264-13.312 9.728-31.232-3.584-41.984l-58.88-46.592c-18.432-14.336-21.504-25.6-20.992-28.672 1.536-1.536 4.608-2.56 7.68-2.56 4.096 0 9.728 1.536 14.336 4.096l163.328 87.04c20.48 12.288 32.256 45.056 31.744 70.144l2.048 96.256v0.512c0.512 6.144 3.072 11.776 7.168 16.384 4.608 5.632 11.264 9.728 18.432 11.264l4.608 1.024h1.024l4.608-1.024c7.168-1.536 13.824-5.632 18.432-11.264 4.096-4.608 6.656-10.752 7.168-16.384v-0.512l2.048-96.256c0-25.088 11.776-57.856 31.744-70.144l162.816-87.04c5.632-2.56 10.752-4.096 14.848-4.096 3.072 0 6.144 1.024 7.68 2.56 0 3.072-2.56 13.824-20.992 28.672l-58.88 46.592c-13.312 11.264-14.848 28.672-3.584 41.984 6.144 7.168 14.336 11.264 22.528 11.264 4.608 0 11.776-1.024 19.456-7.168l57.344-45.568c3.072-2.048 8.704-6.144 12.8-11.776 29.184-27.648 34.816-50.176 37.888-70.656l3.072-13.824 56.32-175.616c0.512-1.024 0.512-1.536 1.024-1.536h1.024c4.608 0.512 5.12 6.656 5.12 10.752l-7.168 193.536c-1.024 30.72-17.92 65.024-46.592 94.208l-98.304 95.232c-21.504 19.968-41.472 40.448-57.344 65.536l-44.544 72.704c-9.216 14.848-4.608 32.768 10.24 41.984 5.12 3.072 10.752 4.608 16.384 4.608 10.24 0 19.968-5.632 25.6-14.848l43.008-69.632c11.776-19.456 29.696-35.84 48.128-53.76l98.816-95.232 1.024-1.024c12.288-13.312 25.088-27.136 35.328-43.52 18.432-30.208 28.672-61.952 28.672-91.648l7.168-193.536V327.68c2.048-42.496-26.624-68.096-53.248-72.704z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M496.128 452.608c5.12 3.072 10.24 4.608 15.872 4.608s11.264-1.536 15.872-4.608c16.896-10.24 162.816-102.4 162.816-205.312 0-64-53.248-116.224-118.784-116.224-21.504 0-41.984 5.632-60.416 16.384-17.92-10.752-38.912-16.384-60.416-16.384-65.536 0-118.784 52.224-118.784 116.224 1.024 102.912 146.944 195.072 163.84 205.312z m-44.544-260.096c14.848 0 28.672 5.632 39.424 15.36 11.776 10.752 30.208 10.752 41.472 0 10.752-9.728 24.576-15.36 39.424-15.36 31.744 0 57.344 24.576 57.344 54.784 0 46.592-66.56 107.52-117.248 142.336-50.688-34.816-117.248-95.744-117.248-142.336 0-30.208 25.6-54.784 56.832-54.784z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_address_fill:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 64c206.554 0 374 167.44 374 373.987C886 644.535 635.967 960 512 960c-123.967 0-374-315.465-374-522.013C138 231.44 305.446 64 512 64z m0 228c-72.902 0-132 59.098-132 132s59.098 132 132 132 132-59.098 132-132-59.098-132-132-132z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_camera:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M871.91210938 235.14453125H711.3359375l-49.83398438-83.05664063c-5.53710938-16.61132813-27.68554688-27.68554688-44.296875-27.68554687H406.79492187c-16.61132813 0-38.75976563 11.07421875-44.29687499 27.68554688l-49.83398438 83.05664062H152.08789062c-44.296875 0-83.05664063 38.75976563-83.05664062 83.05664063v498.33984374c0 44.296875 38.75976563 83.05664063 83.05664063 83.05664063h719.82421875c44.296875 0 83.05664063-38.75976563 83.05664062-83.05664063V318.20117187c0-44.296875-38.75976563-83.05664063-83.05664062-83.05664062zM512 788.85546875c-138.42773438 0-249.16992188-110.7421875-249.16992188-249.16992188s110.7421875-249.16992188 249.16992188-249.16992187 249.16992188 110.7421875 249.16992188 249.16992188-110.7421875 249.16992188-249.16992188 249.16992187z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M345.88671875 539.68554688a2.59552002 2.59552002 0 1 0 332.2265625-1e-8 2.59552002 2.59552002 0 1 0-332.2265625 0z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_star:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M756.15 940.58a52.43 52.43 0 0 1-24.64-6.1L512 819 292.43 934.48a52.85 52.85 0 0 1-76.74-55.74l41.89-244.41L80 461.13a52.91 52.91 0 0 1 29.33-90.23l245.35-35.67 109.76-222.36a52.88 52.88 0 0 1 94.81 0L669.2 335.23l245.48 35.67A52.91 52.91 0 0 1 944 461.13L766.36 634.21l41.89 244.42a53 53 0 0 1-52.1 62z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_picture:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M912.0003125 591.9996875A40.0003125 40.0003125 0 0 1 872 552.0003125V231.9996875H152v360l172.8-172.8a40.0003125 40.0003125 0 0 1 55.44-1.119375L611.999375 632l111.88125-95.88a40.0003125 40.0003125 0 0 1 54.31875 2.0803125l162.080625 162.0796875a40.0003125 40.0003125 0 0 1 11.7196875 28.2796875v103.44A40.0003125 40.0003125 0 0 1 912.0003125 872H111.9996875a40.0003125 40.0003125 0 0 1-39.999375-40.0003125V192.0003125A40.0003125 40.0003125 0 0 1 111.9996875 152h800.000625a40.0003125 40.0003125 0 0 1 39.999375 40.0003125v360a40.0003125 40.0003125 0 0 1-39.999375 39.999375zM152 792.0003125h720V752L752 632 639.0003125 728.84a40.0003125 40.0003125 0 0 1-53.16-0.96L351.9996875 512 152 711.9996875v80.000625z m540-360a60 60 0 1 1 0-120 60 60 0 0 1 0 120z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_calendar:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M330.83443298 607.95637512h363.62024231c22.23235932 0 40.2599762-17.70663757 40.2599762-39.54101715s-18.02761688-39.54188232-40.2599762-39.54188233H330.83443298c-22.23235932 0-40.26084137 17.70750275-40.26084137 39.54188233s18.01983033 39.54188232 40.26084137 39.54188232z m0 166.09338226h253.57538453c22.23235932 0 40.2599762-17.70836792 40.2599762-39.54274749s-18.01896515-39.54188232-40.2599762-39.54188232H330.83443298c-22.23235932 0-40.26084137 17.70836792-40.26084137 39.54188232s18.01983033 39.5427475 40.26084137 39.54274749z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M834.14556275 148.23613892H753.61695862V108.68560486C753.61695862 86.84257355 735.58847656 69.14372253 713.34746551 69.14372253c-22.24014587 0-40.26862793 17.70750275-40.26862793 39.54188233v39.54188232H350.97393799V108.68560486C350.97307281 86.84257355 332.94372559 69.14372253 310.70444488 69.14372253c-22.24101105 0-40.26949311 17.70750275-40.2694931 39.54188233v39.54188232h-80.52860412C123.20148316 148.23613892 69.11776733 201.35172577 69.11776733 266.87130279v569.46228333C69.11776733 901.85316314 123.20148316 954.96875 189.91499939 954.96875h644.23921509c66.71351624 0 120.79723206-53.11472168 120.79723206-118.63516388V266.87130279c-0.00865173-65.51957702-54.09236755-118.63516388-120.80588379-118.63516388z m40.26862792 688.08966065c0 21.84216614-18.02848206 39.54188232-40.26862793 39.54188232H189.91499939c-22.24014587 0-40.26862793-17.70836792-40.26862793-39.5427475V448.22288208h724.76781921v388.10205231zM149.64637146 369.12960053V266.87130279c0-21.84303131 18.02848206-39.54188232 40.26862793-39.54188232H270.44360352v39.54188232c0 14.12655029 7.67408753 27.18893738 20.12998809 34.25653839 12.45763092 7.06760102 27.81186218 7.06760102 40.2694931 0 12.45676575-7.06760102 20.1299881-20.12133637 20.1299881-34.25653839v-39.54188232H673.08662415v39.54188232c0 21.83437958 18.02848206 39.54188232 40.26862793 39.54188233s40.26084137-17.69885102 40.26949309-39.54188233v-39.54188232h80.52860413c22.24014587 0 40.26862793 17.70750275 40.26862793 39.54188232v102.26781464H149.64637146z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_business_card:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M835.19 885.7475H188.81c-71.82 0-129.465-60.9525-129.465-135.135V269.135c0-74.655 58.1175-135.135 129.465-135.135h645.9075c34.965 0 67.5675 13.7025 91.665 39.69 24.57 25.9875 38.2725 59.535 38.2725 96.39v481.4775c0 73.2375-57.645 134.19-129.465 134.19z m-646.38-666.225c-24.0975 0-43.47 22.2075-43.47 49.14v481.4775c0 27.405 19.3725 49.14 43.47 49.14h646.38c24.0975 0 43.47-22.2075 43.47-49.14V269.135c0-14.175-5.1975-26.9325-14.175-36.855l-0.4725-0.4725c-7.56-8.0325-17.955-12.7575-29.295-12.7575H188.81v0.4725z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M716.5925 515.78c-68.985 0-124.2675-55.755-124.2675-124.2675s55.755-124.2675 124.2675-124.2675c68.985 0 124.2675 55.755 124.2675 124.2675s-56.2275 124.2675-124.2675 124.2675z m0-162.54c-21.2625 0-38.2725 17.01-38.2725 38.2725s17.01 38.2725 38.2725 38.2725 38.2725-17.01 38.2725-38.2725-17.01-38.2725-38.2725-38.2725zM452.465 597.5225H245.9825c-23.625 0-42.9975-19.3725-42.9975-42.9975s19.3725-42.9975 42.9975-42.9975h206.4825c23.625 0 42.9975 19.3725 42.9975 42.9975s-18.9 42.9975-42.9975 42.9975z m217.35 134.6625H246.455c-23.625 0-42.9975-19.3725-42.9975-42.9975s19.3725-42.9975 42.9975-42.9975h422.8875c23.625 0 42.9975 19.3725 42.9975 42.9975s-19.3725 42.9975-42.525 42.9975z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_plus:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 63.11758033a56.11079562 56.11079562 0 0 1 56.11079562 56.10948054v336.66214351h336.66214351a56.11079562 56.11079562 0 1 1 0 112.22159124h-336.66214351v336.66214351a56.11079562 56.11079562 0 1 1-112.22159124 0v-336.66214351h-336.66214351a56.11079562 56.11079562 0 1 1 0-112.22159124h336.66214351v-336.66214351A56.11079562 56.11079562 0 0 1 512 63.11758033z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrows_down:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M943.45771731 395.59062736l-385.88468632 422.04589569c-11.39325775 13.37469388-28.23546485 20.80507937-45.57303099 20.80507937-17.33756614 0-34.17977325-7.43038548-45.57303099-20.80507937L79.55156463 395.59062736c-18.82364324-19.8143613-24.76795162-49.04054421-14.86077098-74.7992139s33.18905518-43.59159486 60.43380197-46.06839003h771.76937263c27.24474679 2.47679516 51.02198034 20.30972033 60.929161 46.06839003 9.90718065 26.25402872 4.45823129 54.98485261-14.36541194 74.7992139z"
              fill="${getColor(0, color, colors, "#BBBBBB")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_search:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M934.88 914.24l-22.56 22.56c-18.72 18.72-48.48 18.72-67.68 0l-166.56-167.52c-62.88 44.64-139.2 71.52-222.72 71.52-212.16 0-384-172.32-384-384s172.32-384 384-384 384 172.32 384 384c0 83.04-26.88 159.84-71.52 222.72l166.56 166.56c19.2 18.72 19.2 49.44 0.48 68.16zM454.88 179.36c-151.68 0-274.56 122.88-274.56 274.56S303.2 728 454.88 728c63.84 0 121.44-22.56 168-59.04 1.92-5.28 5.28-11.04 10.08-14.88l22.56-22.56c4.8-4.8 9.6-7.68 14.88-10.08 36.48-46.56 59.04-104.16 59.04-168-0.48-151.2-123.36-274.08-274.56-274.08z"
              fill="${getColor(0, color, colors, "#1B1B1B")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_comment:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M864 608c-12.8 0-25.6 12.8-25.6 25.6l0 268.8c0 38.4-32 70.4-70.4 70.4L198.4 972.8c-38.4 0-70.4-32-70.4-70.4L128 121.6c0-38.4 32-70.4 70.4-70.4L768 51.2c38.4 0 70.4 32 70.4 70.4l0 32c0 12.8 12.8 25.6 25.6 25.6 12.8 0 25.6-12.8 25.6-25.6L889.6 121.6C889.6 57.6 832 0 768 0L198.4 0C128 0 76.8 57.6 76.8 121.6l0 780.8C76.8 966.4 128 1024 198.4 1024L768 1024c70.4 0 121.6-57.6 121.6-121.6L889.6 633.6C889.6 620.8 876.8 608 864 608z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M576 249.6c0-6.4-6.4-12.8-12.8-12.8l-384 0c-6.4 0-12.8 6.4-12.8 12.8S172.8 256 179.2 256l384 0C569.6 256 576 256 576 249.6z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M454.4 428.8c0-6.4-6.4-12.8-12.8-12.8L179.2 416c-6.4 0-12.8 6.4-12.8 12.8s6.4 12.8 12.8 12.8l262.4 0C448 435.2 454.4 435.2 454.4 428.8z"
              fill="${getColor(2, color, colors, '#000')}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M179.2 595.2c-6.4 0-12.8 6.4-12.8 12.8s6.4 12.8 12.8 12.8l160 0c6.4 0 12.8-6.4 12.8-12.8S339.2 595.2 332.8 595.2L179.2 595.2z"
              fill="${getColor(3, color, colors, '#000')}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M979.2 326.4l-64-64c-25.6-25.6-76.8-25.6-102.4 0l-384 384 172.8 172.8 384-384c12.8-12.8 19.2-32 19.2-51.2C1004.8 358.4 992 339.2 979.2 326.4zM947.2 396.8l-352 352-102.4-102.4 352-352c6.4-6.4 25.6-6.4 32 0l64 64c6.4 6.4 6.4 12.8 6.4 19.2C953.6 384 953.6 390.4 947.2 396.8z"
              fill="${getColor(4, color, colors, '#000')}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M390.4 876.8 576 832l-166.4-166.4-44.8 185.6C364.8 864 377.6 876.8 390.4 876.8z"
              fill="${getColor(5, color, colors, '#000')}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M844.8 332.8 544 640c-6.4 6.4-6.4 12.8 0 19.2 0 0 6.4 6.4 6.4 6.4 0 0 6.4 0 6.4-6.4l307.2-307.2c6.4-6.4 6.4-12.8 0-19.2S851.2 332.8 844.8 332.8z"
              fill="${getColor(6, color, colors, '#000')}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_collection:
        svgXml = '''
          <svg viewBox="0 0 1026 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M1019.109859 384c-11.286261-32.01113-39.713391-55.05113-74.195478-60.126609L701.69212 288.233739l-105.627826-216.019478c-15.270957-31.276522-48.261565-51.489391-84.057043-51.489391-35.706435 0-68.652522 20.21287-83.968 51.489391l-105.672348 216.041739L79.166902 323.940174c-34.504348 4.964174-62.953739 27.981913-74.24 60.17113-11.264 32.50087-2.871652 67.806609 21.882435 92.137739l178.509913 175.638261-41.405217 243.378087c-5.810087 33.925565 9.282783 68.719304 38.555826 88.687304 28.627478 19.255652 67.005217 21.370435 97.836522 5.164522l211.745391-112.39513 211.878957 112.417391c13.712696 7.234783 29.094957 11.063652 44.521739 11.063652 19.010783 0 37.420522-5.609739 53.337043-16.317217 29.139478-19.878957 44.210087-54.650435 38.4-88.576l-41.382957-243.400348 178.532174-175.638261C1022.048294 451.917913 1030.440641 416.589913 1019.109859 384zM966.062207 444.527304l-195.094261 191.955478 45.278609 266.329043c2.938435 17.096348-4.585739 34.05913-19.478261 44.232348-15.248696 10.24-35.817739 11.330783-52.045913 2.782609L512.00725 826.323478l-232.537043 123.436522c-16.406261 8.637217-36.997565 7.479652-52.045913-2.671304-15.048348-10.262261-22.572522-27.247304-19.634087-44.343652l45.30087-266.284522-195.072-191.955478c-12.377043-12.154435-16.606609-29.718261-11.063652-45.723826 5.765565-16.384 20.524522-28.182261 38.622609-30.786783l266.48487-39.112348 115.97913-237.122783c7.880348-16.11687 25.154783-26.534957 43.987478-26.534957 18.899478 0 36.173913 10.395826 44.054261 26.512696l115.95687 237.122783 266.418087 39.023304c18.075826 2.671304 32.901565 14.514087 38.64487 30.809043C982.668815 414.786783 978.43925 432.328348 966.062207 444.527304zM509.046555 376.898783c-45.590261 0-82.320696 13.913043-109.122783 41.316174-44.744348 45.746087-43.78713 112.194783-43.720348 115.021913 0.26713 12.109913 10.173217 21.726609 22.238609 21.726609 0.133565 0 0.289391 0 0.422957 0 12.265739-0.222609 22.016-10.373565 21.837913-22.639304 0-0.512-0.400696-51.066435 31.254261-83.18887 18.098087-18.387478 44.054261-27.692522 77.06713-27.692522 12.288 0 22.26087-9.97287 22.26087-22.26087S521.334555 376.898783 509.046555 376.898783z"
              fill="${getColor(0, color, colors, "#2c2c2c")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_examination:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M153.6 58.88v901.632h706.56V58.88H153.6z m641.024 834.56H218.624v-768h576v768z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M399.36 228.352h-35.84c-2.048 0-4.608 1.536-5.12 3.584l-31.232 186.368c-0.512 4.096 2.56 7.68 6.144 7.68h32.768c2.048 0 4.096-1.536 4.096-3.584l33.28-188.416c1.024-3.072-1.024-5.632-4.096-5.632zM537.088 242.176c-8.704-10.24-23.552-15.36-39.424-15.36-15.872 0-32.256 5.12-44.544 15.36-12.288 9.728-19.968 22.016-23.552 42.496l-15.36 86.016c-3.584 20.48 0 32.256 8.704 42.496 8.704 10.24 23.552 15.36 39.424 15.36 15.872 0 32.256-5.12 44.544-15.36 12.288-9.728 19.968-22.016 23.552-42.496l15.36-86.016c3.584-20.48 0-32.768-8.704-42.496z m-35.328 40.96l-15.872 89.6c-2.048 10.752-8.704 16.384-16.896 16.384s-12.8-5.12-11.264-16.384l15.872-89.6c2.048-10.752 8.704-16.384 16.896-16.384 8.192 0 13.312 5.12 11.264 16.384zM676.352 242.176c-8.704-10.24-23.552-15.36-39.424-15.36s-32.256 5.12-44.544 15.36c-12.288 9.728-19.968 22.016-23.552 42.496l-15.36 86.016c-3.584 20.48 0 32.256 8.704 42.496 8.704 10.24 23.552 15.36 39.424 15.36 15.872 0 32.256-5.12 44.544-15.36 12.288-9.728 19.968-22.016 23.552-42.496l15.36-86.016c3.584-20.48 0-32.768-8.704-42.496z m-35.328 40.96l-15.872 89.6c-2.048 10.752-8.704 16.384-16.896 16.384s-12.8-5.12-11.264-16.384l15.872-89.6c2.048-10.752 8.704-16.384 16.896-16.384 8.192 0 13.312 5.12 11.264 16.384zM313.856 515.584h347.648V573.44H313.856zM313.856 638.976h275.968v57.856H313.856zM313.856 767.488h275.968v57.856H313.856z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_train:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M112.99 107.96c18.66-14.82 42.15-23.49 65.98-24.21 221.67-0.01 443.33 0.01 665-0.01 35.14 0.57 69.22 19.04 89.33 47.79 12.89 18.14 20.21 40.18 20.7 62.43 0.01 173.36-0.01 346.72 0.01 520.07 0.36 21.66-5.84 43.32-17.42 61.61-18.37 29.42-50.91 49.42-85.51 52.25-11 0.76-22.05 0.17-33.07 0.36-50.85 0.02-101.7-0.04-152.55 0.03 46.92 22.44 93.73 45.13 140.63 67.62 6.51 2.98 11.54 9.06 13.01 16.1 2.08 8.63-1.4 18.26-8.52 23.56-6.85 5.42-16.81 6.25-24.58 2.39L563.31 830.76c-2.31-1.06-4.55-2.65-7.2-2.52-29.38 0.01-58.77 0.02-88.15 0-1.35-0.06-2.68 0.25-3.88 0.86-75.35 36.33-150.74 72.56-226.1 108.86-4.82 2.46-10.48 2.87-15.74 1.81-9.21-2.06-16.65-10.24-17.72-19.63-1.41-9.61 3.94-19.74 12.73-23.91 47.03-22.65 94.09-45.25 141.1-67.94-58.46-0.08-116.93-0.03-175.4-0.03-31.62 0.36-62.9-13.79-83.95-37.31-14.15-15.62-23.8-35.27-27.43-56.04-1.74-9.51-1.89-19.23-1.82-28.87V215.98c0.07-13.68-0.57-27.51 2.21-40.99 5.06-26.3 19.96-50.52 41.03-67.03m65.26 22.39c-20.43 1.41-39.79 12.94-50.92 30.11-7.59 11.3-11.19 24.98-11.07 38.53-0.02 171.32-0.01 342.63-0.01 513.95-0.1 13.13 3.24 26.38 10.37 37.48 9.4 15.11 25.07 26.17 42.48 29.89 9.8 2.31 19.93 1.17 29.9 1.44h644.05c16.82-0.4 33.26-7.75 45.06-19.69 11.85-11.84 18.98-28.3 19.38-45.06 0.02-172.69-0.01-345.38 0.02-518.07 0.42-14.5-4.02-29.12-12.58-40.84-10.24-14.41-26.45-24.41-43.92-27.11-6.94-1.21-14.02-0.58-21.02-0.73-217.25 0.07-434.5-0.14-651.74 0.1z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M698.45 249.45c6.43-6.6 16.82-8.79 25.35-5.26 5.53 2.01 9.17 6.84 13.4 10.65 31.85 31.81 63.67 63.65 95.5 95.48 3.74 3.71 6.68 8.41 7.43 13.7 1.8 9.51-3.16 19.84-11.76 24.3-8.56 4.85-20.16 3.4-27.18-3.51-19.82-19.8-39.61-39.63-59.43-59.42-0.03 83.55 0.02 167.1-0.03 250.65-0.54 35.34-18.65 69.75-47.3 90.39-30.2 22.34-71.59 28.19-106.84 15.26-8.03-2.95-15.79-6.68-22.96-11.35-5.6-3.6-9.32-9.83-10.12-16.41-1.22-8.8 3.13-18.1 10.75-22.7 7.5-4.79 17.69-4.61 25.12 0.27 13.38 8.46 29.79 12.08 45.47 9.79 18.45-2.46 35.68-12.85 46.45-28.04 8.21-11.35 12.79-25.24 12.95-39.25V318.62c-20.76 20.75-41.51 41.51-62.26 62.26-4.17 4.22-9.96 6.78-15.89 6.89-8.22 0.28-16.5-4.07-20.64-11.23-5.49-8.87-3.97-21.31 3.5-28.61 32.81-32.84 65.64-65.67 98.49-98.48zM230.39 268.51c1.81-0.52 3.7-0.74 5.59-0.77 62.66 0.02 125.32 0.01 187.99 0.01 9.22 0.04 17.92 6.47 20.89 15.16 2.79 7.45 1.39 16.26-3.59 22.47-4.52 5.84-11.93 9.03-19.26 8.87-61.33 0-122.66 0.01-183.99-0.01-5.5 0.08-11.06-1.47-15.42-4.87-6.76-5.05-10.27-14.04-8.75-22.34 1.32-8.67 8.06-16.23 16.54-18.52zM231.41 450.53c3.8-0.84 7.73-0.48 11.59-0.53h173.98c4.38 0.04 8.89-0.39 13.13 1.01 8.36 2.53 14.83 10.27 15.92 18.92 1.3 8.27-2.36 17.06-9.13 21.97-4.22 3.24-9.61 4.66-14.87 4.62-61.67-0.04-123.34-0.01-185.01-0.02-4.75-0.02-9.5-1.38-13.41-4.08-7.82-5.17-11.74-15.44-9.47-24.51 1.79-8.47 8.86-15.45 17.27-17.38zM231.36 616.46c4.14-0.94 8.43-0.7 12.65-0.71 59.33 0.01 118.67-0.01 178.01 0.01 4.96-0.01 10 1.21 14.1 4.09 8.02 5.24 11.94 15.82 9.42 25.05-1.78 7.37-7.45 13.59-14.59 16.1-4.45 1.71-9.28 1.2-13.93 1.25-60.34 0.01-120.67-0.01-181 0.01-11.17 0.11-21.2-9.3-22.33-20.32-1.69-11.39 6.43-23.05 17.67-25.48z"
              fill="${getColor(1, color, colors, '#000')}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_first:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M287.762 124.318v252.871c0 123.331 100.905 224.238 224.238 224.238 123.331 0 224.238-100.907 224.238-224.238V124.318H287.762z"
              fill="${getColor(0, color, colors, "#D81919")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M379.487 124.318v149.434c0 72.882 59.63 132.513 132.513 132.513 72.882 0 132.513-59.631 132.513-132.513V124.318H379.487z"
              fill="${getColor(1, color, colors, "#FACC60")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M644.513 124.318v149.434c0 72.882-59.631 132.514-132.513 132.514-72.884 0-132.514-59.631-132.514-132.514V124.318h265.027m19.201-19.201H360.285v168.635c0 83.656 68.059 151.714 151.715 151.714s151.714-68.059 151.714-151.714V105.117z"
              fill="${getColor(2, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-339.055 0a339.055 339.055 0 1 0 678.11 0 339.055 339.055 0 1 0-678.11 0Z"
              fill="${getColor(3, color, colors, "#F8B643")}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-250.074 0a250.074 250.074 0 1 0 500.148 0 250.074 250.074 0 1 0-500.148 0Z"
              fill="${getColor(4, color, colors, "#FFF89F")}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M512 372.662c138.112 0 250.074 111.962 250.074 250.074S650.112 872.81 512 872.81c-138.113 0-250.074-111.962-250.074-250.074S373.888 372.662 512 372.662m0-24.001c-151.126 0-274.075 122.95-274.075 274.075S360.874 896.811 512 896.811s274.075-122.95 274.075-274.076S663.126 348.661 512 348.661z"
              fill="${getColor(5, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M786.015 124.319h-548.03c-17.08 0-31.055-13.975-31.055-31.055s13.975-31.055 31.055-31.055h548.029c17.08 0 31.055 13.975 31.055 31.055 0.001 17.08-13.974 31.055-31.054 31.055z"
              fill="${getColor(6, color, colors, "#231815")}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
            <path
              d="M556.594 800.727h-51.41V527.763l-68.956 39.578 0.408-51.41 82.827-48.147h37.131v332.943z"
              fill="${getColor(7, color, colors, '#000')}"
              fill-opacity="${getOpacity(7, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_second:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M287.762 124.318v252.871c0 123.331 100.905 224.238 224.238 224.238 123.331 0 224.238-100.907 224.238-224.238V124.318H287.762z"
              fill="${getColor(0, color, colors, "#82A0AF")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M379.487 124.318v149.434c0 72.882 59.63 132.513 132.513 132.513 72.882 0 132.513-59.631 132.513-132.513V124.318H379.487z"
              fill="${getColor(1, color, colors, "#E0EAED")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M644.513 124.318v149.434c0 72.882-59.631 132.514-132.513 132.514-72.884 0-132.514-59.631-132.514-132.514V124.318h265.027m19.201-19.201H360.285v168.635c0 83.656 68.059 151.714 151.715 151.714s151.714-68.059 151.714-151.714V105.117z"
              fill="${getColor(2, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-339.055 0a339.055 339.055 0 1 0 678.11 0 339.055 339.055 0 1 0-678.11 0Z"
              fill="${getColor(3, color, colors, "#9EC2F7")}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-250.074 0a250.074 250.074 0 1 0 500.148 0 250.074 250.074 0 1 0-500.148 0Z"
              fill="${getColor(4, color, colors, "#DDECF7")}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M512 372.662c138.112 0 250.074 111.962 250.074 250.074S650.112 872.81 512 872.81c-138.113 0-250.074-111.962-250.074-250.074S373.888 372.662 512 372.662m0-24.001c-151.126 0-274.075 122.95-274.075 274.075S360.874 896.811 512 896.811s274.075-122.95 274.075-274.076S663.126 348.661 512 348.661z"
              fill="${getColor(5, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M786.015 124.319h-548.03c-17.08 0-31.055-13.975-31.055-31.055s13.975-31.055 31.055-31.055h548.029c17.08 0 31.055 13.975 31.055 31.055 0.001 17.08-13.974 31.055-31.054 31.055z"
              fill="${getColor(6, color, colors, "#231815")}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
            <path
              d="M623.478 748.689v42.438h-218.7v-34.684l128.12-130.562c13.599-13.599 23.256-25.839 28.97-36.723 5.71-10.875 8.569-22.576 8.569-35.092 0-17.949-5.241-32.233-15.708-42.836-10.477-10.613-24.685-15.915-42.639-15.915-16.594 0-30.465 4.285-41.617 12.849-11.157 8.569-19.177 20.748-24.071 36.517l-37.947-22.435c7.346-22.576 19.993-39.785 37.947-51.616 17.949-11.832 40.394-17.752 67.32-17.752 20.945 0 39.644 4.285 56.102 12.854 16.454 8.569 29.237 20.542 38.355 35.908 9.108 15.371 13.669 32.711 13.669 52.024 0 18.498-4.631 35.43-13.876 50.796-9.249 15.371-24.343 33.803-45.288 55.287l-86.09 88.944h146.884z"
              fill="${getColor(7, color, colors, '#000')}"
              fill-opacity="${getOpacity(7, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_third:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M287.762 124.318v252.871c0 123.331 100.905 224.238 224.238 224.238 123.331 0 224.238-100.907 224.238-224.238V124.318H287.762z"
              fill="${getColor(0, color, colors, "#BF4C19")}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
            <path
              d="M379.487 124.318v149.434c0 72.882 59.63 132.513 132.513 132.513 72.882 0 132.513-59.631 132.513-132.513V124.318H379.487z"
              fill="${getColor(1, color, colors, "#DC8C57")}"
              fill-opacity="${getOpacity(1, color, colors, '#000', null)}"
            />
            <path
              d="M644.513 124.318v149.434c0 72.882-59.631 132.514-132.513 132.514-72.884 0-132.514-59.631-132.514-132.514V124.318h265.027m19.201-19.201H360.285v168.635c0 83.656 68.059 151.714 151.715 151.714s151.714-68.059 151.714-151.714V105.117z"
              fill="${getColor(2, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(2, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-339.055 0a339.055 339.055 0 1 0 678.11 0 339.055 339.055 0 1 0-678.11 0Z"
              fill="${getColor(3, color, colors, "#FCC181")}"
              fill-opacity="${getOpacity(3, color, colors, '#000', null)}"
            />
            <path
              d="M512 622.736m-250.074 0a250.074 250.074 0 1 0 500.148 0 250.074 250.074 0 1 0-500.148 0Z"
              fill="${getColor(4, color, colors, "#FFE6BF")}"
              fill-opacity="${getOpacity(4, color, colors, '#000', null)}"
            />
            <path
              d="M512 372.662c138.112 0 250.074 111.962 250.074 250.074S650.112 872.81 512 872.81c-138.113 0-250.074-111.962-250.074-250.074S373.888 372.662 512 372.662m0-24.001c-151.126 0-274.075 122.95-274.075 274.075S360.874 896.811 512 896.811s274.075-122.95 274.075-274.076S663.126 348.661 512 348.661z"
              fill="${getColor(5, color, colors, "#FFFFFF")}"
              fill-opacity="${getOpacity(5, color, colors, '#000', null)}"
            />
            <path
              d="M786.015 124.319h-548.03c-17.08 0-31.055-13.975-31.055-31.055s13.975-31.055 31.055-31.055h548.029c17.08 0 31.055 13.975 31.055 31.055 0.001 17.08-13.974 31.055-31.054 31.055z"
              fill="${getColor(6, color, colors, "#231815")}"
              fill-opacity="${getOpacity(6, color, colors, '#000', null)}"
            />
            <path
              d="M627.439 699.539c0 20.677-4.692 39.105-14.077 55.287-9.385 16.187-22.51 28.764-39.372 37.741-16.871 8.977-36.18 13.468-57.94 13.468-25.843 0-48.082-5.916-66.711-17.752-18.634-11.832-31.351-28.079-38.148-48.757l37.947-22.44c5.161 14.687 13.463 26.11 24.887 34.272 11.424 8.161 25.431 12.24 42.025 12.24 18.493 0 33.386-5.916 44.678-17.748 11.283-11.832 16.932-27.264 16.932-46.31 0-19.585-5.649-34.947-16.932-46.104-11.293-11.152-26.725-16.73-46.31-16.73-19.857 0-34.68 6.394-44.472 19.177l-28.97-31.417 108.53-113.836H424.654v-42.846h187.691v34.684l-86.91 91.804c19.585 0.272 37.131 4.894 52.633 13.871 15.507 8.977 27.606 21.423 36.316 37.333 8.7 15.914 13.055 33.938 13.055 54.063z"
              fill="${getColor(7, color, colors, '#000')}"
              fill-opacity="${getOpacity(7, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_live:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M710 827c17.673 0 32 14.327 32 32 0 17.673-14.327 32-32 32H314c-17.673 0-32-14.327-32-32 0-17.673 14.327-32 32-32h396z m148-693c35.346 0 64 28.654 64 64v454c0 35.346-28.654 64-64 64H166c-35.346 0-64-28.654-64-64V198c0-35.346 28.654-64 64-64h692z m0 64H166v454h692V198z m-398.698 71.294l0.32 0.209 191.767 124.65c9.183 6.124 14.484 15.21 14.484 26.24 0 9.633-5.999 20.367-14.544 24.013l-0.325 0.135-0.286 0.11-190.756 116.84-0.22 0.187c-1.716 1.418-3.793 2.271-6.232 2.755l-0.434 0.082-0.397 0.067-0.535 0.08c-1.692 0.238-3.401 0.319-5.981 0.335l-0.845 0.003h-1.593l-0.98-0.008c-5.08-0.07-7.883-0.644-12.243-2.775l-0.727-0.361-0.291-0.195c-9.047-6.032-14.325-14.938-14.48-25.75l-0.004-0.493v-239.64c0-11.03 5.301-20.116 14.483-26.239 8.951-5.97 20.79-6.05 29.82-0.245z m14.858 79.946v133.057l106.033-64.45L474.16 349.24z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrow_right:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M266.2 78.6a49.65 49.65 0 0 0 0 71.7L649.8 511.4l-383.5 362a49.65 49.65 0 0 0 0 71.7c20.40000001 19.7 53.7 19.7 74.1 0l403-388.9c13-12.5 25-29.6 21.3-45.7 2.8-16.1-10.2-31.4-21.3-43.9l-403-388c-20.49999999-19.7-53.8-19.7-74.2 0z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrow_down:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M945.4 266.2a49.65 49.65 0 0 0-71.7 0L512.6 649.8l-362-383.5a49.65 49.65 0 0 0-71.7 0c-19.7 20.40000001-19.7 53.7 0 74.1l388.9 403c12.5 13 29.6 25 45.7 21.3 16.1 2.8 31.4-10.2 43.9-21.3l388-403c19.7-20.49999999 19.7-53.8 0-74.2z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrow_up:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M78.6 757.8a49.65 49.65 0 0 0 71.7 0L511.4 374.2l362 383.5a49.65 49.65 0 0 0 71.7 0c19.7-20.40000001 19.7-53.7 0-74.1l-388.9-403c-12.5-13-29.6-25-45.7-21.3-16.1-2.8-31.4 10.2-43.9 21.3l-388 403c-19.7 20.49999999-19.7 53.8 0 74.2z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;
      case IconNames.lxq_arrow_left:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M757.8 945.4a49.65 49.65 0 0 0 0-71.7L374.2 512.6l383.5-362a49.65 49.65 0 0 0 0-71.7c-20.40000001-19.7-53.7-19.7-74.1 0l-403 388.9c-13 12.5-25 29.6-21.3 45.7-2.8 16.1 10.2 31.4 21.3 43.9l403 388c20.49999999 19.7 53.8 19.7 74.2 0z"
              fill="${getColor(0, color, colors, '#000')}"
              fill-opacity="${getOpacity(0, color, colors, '#000', null)}"
            />
          </svg>
        ''';
        break;

    }

    return SvgPicture.string(svgXml, width: size ?? 18, height: size ?? 18);
  }
}
