import 'package:flutter/cupertino.dart';
import 'package:probatio/displaySize.dart';
import 'package:probatio/theme.dart' as theme;

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String displayName = 'New Remind';

  final TextEditingController _controller = TextEditingController(text: 'New Remind');

  late String designatedDate;

  @override
  Widget build(BuildContext _) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Add Reminder'),
      ),
      child: Column(
        children: [
          SizedBox(
            height: displayHeight(_) * 0.3,
            child: Text(displayName, style: const TextStyle(color: CupertinoColors.black) ,),
          ),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (time) {},
              minimumYear: DateTime.now().year,
              maximumYear: DateTime.now().year + 3,
              maximumDate: DateTime.now(),
              mode: CupertinoDatePickerMode.date,
            ),
          ),
          SizedBox(
            width: displayWidth(_) * 0.96,
            height: displayHeight(_) * 0.04,
            child: CupertinoTextField(
              controller: _controller,
              keyboardType: TextInputType.name,
              onChanged: (change) {

              },
            ),
          )
        ],
      )
    );
  }
}
