import 'package:flutter/cupertino.dart';

CupertinoTextThemeData _textTheme = const CupertinoTextThemeData(
  textStyle: TextStyle(
    color: CupertinoColors.black,
  ),
);

double iconSize = 30;

Brightness _brightness = Brightness.light;

Color _primaryColor = CupertinoColors.activeBlue;

CupertinoThemeData cupertinoThemeData = CupertinoThemeData(
  textTheme: _textTheme,
  brightness: _brightness,
  primaryColor: _primaryColor,
);

void setThemeTo(
    CupertinoTextThemeData cupertinoTextThemeData,
    Brightness brightness,
    Color primaryColor,
    ) {
  _textTheme = cupertinoTextThemeData;
  _brightness = brightness;
  _primaryColor = primaryColor;
}