import 'package:flutter/foundation.dart';

enum DropDownType { current, another }

class AzDropdownMenuController extends ChangeNotifier {
  double dropDownHeaderHeight;

  int menuIndex = 0;

  bool isShow = false;

  bool isShowHideAnimation = false;

  DropDownType dropDownType;

  void show(int index, {double top}) {
    isShow = true;
    menuIndex = index;
    dropDownHeaderHeight = top;
    notifyListeners();
  }

  void hide({bool isShowHideAnimation = true}) {
    this.isShowHideAnimation = isShowHideAnimation;
    isShow = false;
    notifyListeners();
  }
}
