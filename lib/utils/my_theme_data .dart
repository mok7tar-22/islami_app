import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static const Color primaryColorDark = Color.fromARGB(255, 20, 26, 46);
  static const Color accentColorDark = Color.fromARGB(255, 250, 204, 29);
  static final ThemeData lightTheme = ThemeData(
      primaryTextTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.bold),
        headline3: TextStyle(color: Colors.black,fontSize: 24),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: MyThemeData.primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: primaryColor,
        brightness: Brightness.light,
        primaryVariant: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),


      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 30),
         backgroundColor:primaryColor,
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));
  static final ThemeData darkTheme = ThemeData(
      primaryTextTheme: TextTheme(
        headline1: TextStyle(color: Colors.white,),
        headline2: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
        headline3: TextStyle(color: Colors.white,fontSize: 24),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: MyThemeData.primaryColorDark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: accentColorDark,
        primaryVariant: Color.fromRGBO(20, 26, 46, 1),
        brightness: Brightness.dark,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

        backgroundColor: primaryColorDark ,
          selectedItemColor: MyThemeData.accentColorDark,
          unselectedItemColor: Colors.white));
}
