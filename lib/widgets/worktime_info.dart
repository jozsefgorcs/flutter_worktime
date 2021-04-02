import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorktimeInfo extends StatelessWidget {
  final int hoursToWork;
  final int minutesToWork;
  final DateTime pickedDateTime;

  const WorktimeInfo(
      {Key key,
      @required this.hoursToWork,
      @required this.minutesToWork,
      @required this.pickedDateTime})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      child: SizedBox(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You have to work until " + getEndDayTime()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Current balance difference: " + currentBalance()),
            )
          ],
        ),
      ),
    );
  }

  String getEndDayTime() {
    var endDay = pickedDateTime
        .add(Duration(hours: hoursToWork, minutes: minutesToWork));
    return DateFormat('kk:mm').format(endDay);
  }

  String currentBalance() {
    var endDay = pickedDateTime
        .add(Duration(hours: hoursToWork, minutes: minutesToWork));
    var difference = endDay.difference(DateTime.now());
    return _printDuration(difference);
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
