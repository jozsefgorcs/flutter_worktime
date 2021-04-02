import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_worktime/screens/screens.dart';
import 'package:flutter_worktime/utils/constants.dart';
import 'package:flutter_worktime/widgets/widgets.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  DateTime pickedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Worktime calculator',
          style: TEXT_THEME_DEFAULT.bodyText2,
        ),
        backgroundColor: COLOR_DARK,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                child: Icon(
                  Icons.settings,
                  size: 26.0,
                  color: COLOR_ORANGE,
                ),
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: TimePicker(
              onValueChanged: (dt) => setState(
                () => {pickedDate = dt},
              ),
              initialDate: pickedDate,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () => onCalculatePress(-5),
                    child: Text(
                      '-5 m',
                      style: TEXT_THEME_DEFAULT.bodyText2,
                    )),
                TextButton(
                    onPressed: () => onCalculatePress(-1),
                    child: Text('-1 m', style: TEXT_THEME_DEFAULT.bodyText2)),
                TextButton(
                    onPressed: onNowPressed,
                    child: Text('now', style: TEXT_THEME_DEFAULT.bodyText2)),
                TextButton(
                    onPressed: () => onCalculatePress(1),
                    child: Text('+1 m', style: TEXT_THEME_DEFAULT.bodyText2)),
                TextButton(
                    onPressed: () => onCalculatePress(5),
                    child: Text('+5 m', style: TEXT_THEME_DEFAULT.bodyText2)),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          WorktimeInfo(
            hoursToWork: 8,
            minutesToWork: 30,
            pickedDateTime: pickedDate,
          )
        ],
      ),
      backgroundColor: COLOR_BLUE,
    );
  }

  void onCalculatePress(int min) {
    var now = DateTime.now();
    var currentPicked = DateTime(
        now.year, now.month, now.day, pickedDate.hour, pickedDate.minute);
    var result = currentPicked.add(Duration(minutes: min));
    setState(() => {pickedDate = result});
    setState(() => {pickedDate = result});
  }

  void onNowPressed() {
    setState(() => {pickedDate = DateTime.now()});
  }
}
