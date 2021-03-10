import 'package:flutter/material.dart';
import './colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  // TextStyle fontWhite
  // print('Hello');

  Color lotus = Color.fromRGBO(11, 176, 169, 1);
  Color tesco = Color.fromRGBO(22, 153, 103, 1);
  Color green1 = Color.fromRGBO(36, 206, 133, 1.0);
  ThemeData customThemeData() => ThemeData(
      // brightness: Brightness.dark,
      primarySwatch: MaterialColor(MyColors.black[50].value, MyColors.black),
      primaryColor: green1,
      backgroundColor: lotus,
      primaryColorBrightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      fontFamily: GoogleFonts.prompt().fontFamily,
      textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 14.0,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          headline4: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          button: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)));
}
