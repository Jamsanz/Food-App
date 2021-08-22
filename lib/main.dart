// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './constants.dart';
import './screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
       primaryColor: kPrimaryColor,
       scaffoldBackgroundColor: Colors.white,
       textTheme: TextTheme(
         bodyText1: TextStyle(color: kSecondaryColor),
         bodyText2:TextStyle(color: kSecondaryColor),
        )
      ),
      home: HomeScreen(),
    );
  }
}
