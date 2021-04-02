import 'package:flutter/material.dart';
import 'package:flutter_worktime/utils/constants.dart';
import 'package:numberpicker/numberpicker.dart';

class TimePicker extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onValueChanged;

  TimePicker({Key key, @required this.onValueChanged, this.initialDate})
      : super(key: key);

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int _hourValue = 6;

  int _minuteValue = 15;

  @override
  Widget build(BuildContext context) {
    if (widget.initialDate != null) {
      _hourValue = widget.initialDate.hour;
      _minuteValue = widget.initialDate.minute;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberPicker(
            textStyle: TEXT_THEME_DEFAULT.bodyText1,
            selectedTextStyle: TEXT_THEME_DEFAULT.bodyText2,
            value: _hourValue,
            minValue: 0,
            maxValue: 23,
            onChanged: (value) => changeHour(value)),
        Text(
          ':',
          style: TEXT_THEME_DEFAULT.bodyText2,
        ),
        NumberPicker(
            textStyle: TEXT_THEME_DEFAULT.bodyText1,
            selectedTextStyle: TEXT_THEME_DEFAULT.bodyText2,
            minValue: 0,
            maxValue: 59,
            value: _minuteValue,
            onChanged: (value) => changeMinute(value)),
      ],
    );
  }

  void changeHour(int hour) {
    if (_hourValue == hour) return;
    setState(() {
      _hourValue = hour;
    });

    emitValueChange();
  }

  void changeMinute(int minute) {
    if (_minuteValue == minute) return;
    setState(() {
      _minuteValue = minute;
    });

    emitValueChange();
  }

  void emitValueChange() {
    var now = DateTime.now();
    var currentPicked =
        DateTime(now.year, now.month, now.day, _hourValue, _minuteValue);
    widget.onValueChanged(currentPicked);
  }
}
