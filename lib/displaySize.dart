import 'package:flutter/cupertino.dart';

Size displaySize(BuildContext _) {
  debugPrint('Size = ' + MediaQuery.of(_).size.toString());
  return MediaQuery.of(_).size;
}

double displayHeight(BuildContext _) {
  debugPrint('Height = ' + displaySize(_).height.toString());
  return displaySize(_).height;
}

double displayWidth(BuildContext _) {
  debugPrint('Width = ' + displaySize(_).width.toString());
  return displaySize(_).width;
}