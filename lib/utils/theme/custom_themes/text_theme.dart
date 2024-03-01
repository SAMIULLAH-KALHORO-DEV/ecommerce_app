import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // headline
    //
    headlineLarge: TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    //
    // title
    //
    titleLarge: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
  );

// ---

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
  );
}
