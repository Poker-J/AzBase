import 'package:flutter/material.dart';

import '../../index.dart';

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: HexColor('#ff4534'),
  scaffoldBackgroundColor: HexColor('#111'),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#181818'),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: TextStyle(color: Colors.white),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: HexColor('#ff4534'),
    unselectedItemColor: HexColor('#666'),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
