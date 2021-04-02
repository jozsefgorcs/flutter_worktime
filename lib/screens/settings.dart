import 'package:flutter/material.dart';
import 'package:flutter_worktime/utils/constants.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Settings',
            style: TEXT_THEME_DEFAULT.bodyText2,
          ),
          backgroundColor: COLOR_DARK,
          iconTheme: IconThemeData(
            color: COLOR_ORANGE, //change your color here
          )),
      body: Container(),
      backgroundColor: COLOR_BLUE,
    );
  }
}
