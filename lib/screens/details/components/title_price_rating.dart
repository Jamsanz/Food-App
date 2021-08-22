import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';
import 'item_info.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key? key,
     required this.price,
    required this.numOfReviews,
    required this.name,
    required this.rating,
    required this.onRatingChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize:30, color:kSecondaryColor,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Row(
                children: [
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: 4,
                  ),
                  SizedBox(width: 10,),
                   Text("$numOfReviews reviews"),
                ],
              ),
            ],
          ),),
          priceTag(context, price: price),
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {required int price}) {
    return ClipPath(
          clipper: PricerClipper(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            height: 66,
            width: 65,
            color: kPrimaryColor,
            child:  Text("N$price",
             style: TextStyle(
               color: Colors.white, fontWeight: FontWeight.bold,
               ),
               ),
          ),
        );
  }
}
