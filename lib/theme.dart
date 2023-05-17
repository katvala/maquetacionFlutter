import 'package:flutter/material.dart';

const kAppBar = Color(0xFF525252);
const kGreen = Color(0xFF7CB518);
const kGreen100 = Color(0xFFDEECC5);
const kSecondary = Color(0xFFF86C5E);
const kSecondary100 = Color(0xFFFDDAD7);
const kPrimary = Color(0xFFFFD400);
const kPrimary100 = Color(0xFFFFF4BF);
const kBlue = Color(0xFF00BBF9);
const kTextColor = Color(0xFF525252);

ThemeData solarTheme = ThemeData(
  primaryColor: kPrimary,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: kTextColor, fontSize: 24, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(
        color: kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
          color: kTextColor, fontSize: 16, fontWeight: FontWeight.w400)),
);
