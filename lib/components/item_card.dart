
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This size provides the total height and width of the screen
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left:20, top:20, right:15, bottom:20),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:  [
           BoxShadow(
          offset: const Offset(0, 4),
          blurRadius: 20,
          color: const Color(0xFFB0CCE1).withOpacity(0.32),
          ),],
         ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){press();},
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(svgSrc, width: size.width* 0.18,),
                  // size.width * 0.18 means it uses 18% of the total width
                ),
                Text(title),
                const SizedBox(height: 10,),
                Text(shopName,style:const TextStyle(fontSize: 12),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
