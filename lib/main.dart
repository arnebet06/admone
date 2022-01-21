import 'package:flutter/cupertino.dart';
import 'screens/mainPage.dart';
import 'theme.dart' as theme;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Scheduler',
      theme: theme.cupertinoThemeData,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
