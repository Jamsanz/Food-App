import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/constants.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  <Widget>[
          SearchBox(
            onChanged: (value){},
          ),
          const CategoryList(),
          const ItemList(),
          const DiscountCard()
        ]
      ),
    );
  }
}




