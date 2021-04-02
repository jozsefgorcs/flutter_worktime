import 'package:flutter/material.dart';
import 'package:flutter_worktime/screens/landing_page.dart';
import 'package:flutter_worktime/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worktime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Worktime calculator',
            style: TEXT_THEME_DEFAULT.bodyText2,
          ),
          backgroundColor: COLOR_DARK,
        ),
        body: LandingPage(),
        backgroundColor: COLOR_BLUE,
      ),
    );
  }
}
