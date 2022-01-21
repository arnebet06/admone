import 'package:flutter/cupertino.dart';
import 'package:transition/transition.dart';
import 'package:probatio/screens/infoPage.dart';
import 'package:probatio/theme.dart' as theme;
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void _showAlert({required String title, required String message}) {
    showCupertinoDialog(context: context, builder: (_) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          CupertinoDialogAction(isDefaultAction: true, child: const  Text('확인'), onPressed: (){
            Navigator.pop(_);
          },)
        ],
      );
    });
  }

  @override
  Widget build(BuildContext _) {
    return CupertinoPageScaffold(
     navigationBar: const CupertinoNavigationBar(
       middle: Text('Setting'),
     ),
      child: ListView(
        children: [
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle, size: theme.iconSize,),
            title: const Text('Check Version'),
            onTap: () => _showAlert(title: 'Version', message: '1.0.0'),
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.info, size: theme.iconSize,),
            title: const Text('About this App'),
            onTap: () => Navigator.push(
              context,
              Transition(
                transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                child: const InfoPage()
              )
            ),
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.star, size: theme.iconSize,),
            title: const Text('Late Us'),
          )
        ],
      )
    );
  }
}