import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class ProductItem extends StatelessWidget {

  ProductItem();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('assets/ic_profile_picture.png',
            width: 160.0,
            height: 130.0,
            fit: BoxFit.fill,),
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 6.0, top: 13.0), child
            : Text('Coca Cola',style: getStyleSubTitle(context),),)
        ],
      ),
    );
  }
}
