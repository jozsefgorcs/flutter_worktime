import 'package:flutter/material.dart';

const COLOR_BLUE = const Color(0xff2b2e4a);
const COLOR_ORANGE = const Color(0xffe84545);
const COLOR_DARK_RED = const Color(0xff903749);
const COLOR_DARK = const Color(0xff53354a);

const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 26),
    headline2:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 22),
    headline3:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 20),
    headline4:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 16),
    headline5:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 14),
    headline6:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_DARK_RED,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_ORANGE,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1:
        TextStyle(color: COLOR_BLUE, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_DARK, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 22),
    headline2:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 20),
    headline3:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 18),
    headline4:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 14),
    headline5:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 12),
    headline6:
        TextStyle(color: COLOR_BLUE, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_BLUE,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_DARK,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1:
        TextStyle(color: COLOR_BLUE, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_DARK, fontSize: 10, fontWeight: FontWeight.w400));
