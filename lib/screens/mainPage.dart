import 'package:flutter/cupertino.dart';
import 'package:transition/transition.dart';
import 'package:probatio/screens/settingPage.dart';
import 'package:probatio/screens/addPage.dart';
import 'package:probatio/theme.dart' as theme;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext _) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              _,
              Transition(
                transitionEffect: TransitionEffect.LEFT_TO_RIGHT,
                child: const AddPage(),
              )
            );
          },
          child: Icon(CupertinoIcons.add, size: theme.iconSize,),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                Transition(transitionEffect: TransitionEffect.RIGHT_TO_LEFT, child: const SettingPage())
            );
          },
          child: Icon(CupertinoIcons.gear_alt_fill, size: theme.iconSize,),
        ),
        middle: const Text('Reminder'),
      ),
      child: const Center(
        child: Text('TODO List Here'),
      ),
    );
  }
}
