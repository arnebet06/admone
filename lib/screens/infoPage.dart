import 'package:flutter/cupertino.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('About this App'),
      ),
      child: Center(
        child: Text('Info Here'),
      ),
    );
  }
}
