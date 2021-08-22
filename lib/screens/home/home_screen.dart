import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/app_bar.dart';
import 'package:food_app/components/body.dart';
import 'package:food_app/components/bottom_navbar.dart';
import 'package:food_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: homeAppBar(),
    bottomNavigationBar: const BottomNavBar(),
    body: const Body(),
    );
  }

}


