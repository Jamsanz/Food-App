import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          shopName(name: "MacDonald's"),
          TitlePriceRating(
            name: "Cheese Burger",
            price: 500,
            rating: 4,
            numOfReviews: 24,
            onRatingChanged: (value){},
          ),
          const Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
          style:  TextStyle(
            height: 1.5,
          ),
          ),
          SizedBox(height: size.height * 0.1,),
          OrderButton(size: size, press: (){},), 
        ],
      ),
    );
  }

  Row shopName({required String name}) {
    return Row(
          children: [
            const Icon(Icons.location_on, color: kSecondaryColor,),
            const SizedBox(width: 10),
            Text(name),
          ],
        );
  }
}



class PricerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path();
    double ignoreHeight=20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width/2,size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}