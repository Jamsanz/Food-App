import 'package:flutter/material.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/item_info.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          ItemImage(imgSrc: "assets/images/burger.png",),
          Expanded(
           child: ItemInfo(),
         ),
      ],
    );
  }
}
