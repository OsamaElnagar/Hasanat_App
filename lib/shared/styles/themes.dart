import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData lightTheme =  ThemeData(
  buttonTheme:ButtonThemeData(
    buttonColor: HexColor('#19293a'),
  ) ,
  cardColor: Colors.white,
  cardTheme:  CardTheme(color:Colors.white,
    shadowColor:  HexColor('#19293a'),
  ),
  primarySwatch: Colors.grey,
  scaffoldBackgroundColor: Colors.white,
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme:  AppBarTheme(
    centerTitle: true,
    actionsIconTheme: const IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: Colors.white,
    elevation: 5.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor:HexColor('#19293a'),
      statusBarBrightness: Brightness.light,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor:Colors.blue,
      elevation: 0.0
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: myColor,
    unselectedItemColor: Colors.grey,
    elevation: 30.0,
    backgroundColor: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.5,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
);

ThemeData darkTheme =  ThemeData(
  backgroundColor: HexColor('#19293a'),
  buttonTheme:ButtonThemeData(
    buttonColor: HexColor('#19293a'),
  ) ,
  cardColor: HexColor('#19293a'),
  scaffoldBackgroundColor: HexColor('#19293a'),
  drawerTheme: DrawerThemeData(
    backgroundColor: HexColor('#19293a'),
  ),
  cardTheme: CardTheme(color:  HexColor('#19293a'),
  shadowColor: Colors.white,),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    actionsIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: HexColor('#19293a'),
    elevation: 5.0,
    systemOverlayStyle:   SystemUiOverlayStyle(
      statusBarColor: HexColor('#19293a'),
      statusBarBrightness: Brightness.dark,
    ),
  ),
  floatingActionButtonTheme:  const FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: myColor,
    unselectedItemColor: Colors.grey,
    elevation: 30.0,
    backgroundColor: HexColor('#19293a'),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.5,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);
