
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar homeAppBar() {
    return AppBar(
    backgroundColor: Colors.white,
    elevation: 0 ,
  leading: IconButton(
  icon: SvgPicture.asset("assets/icons/menu.svg"),
  onPressed: (){},
  ),
  title: Center(
    child: RichText(
      text: const TextSpan(
        style:TextStyle(
          fontWeight: FontWeight.bold,
        ),
        children:[
        TextSpan(text: "Punk", style: TextStyle(color: kSecondaryColor)),
        TextSpan(text: "Food", style: TextStyle(color: kPrimaryColor))
      ] ),
    ),
  ),
  actions: [IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg"))],
  );
  }

