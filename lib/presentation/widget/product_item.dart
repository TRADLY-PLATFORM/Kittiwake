import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/model/product.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class ProductItem extends StatelessWidget {

  final Product _product;

  ProductItem({required Product product}): this._product = product;

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
          Image.network(this._product.image,
            width: 160.0,
            height: 130.0,
            fit: BoxFit.fill,),
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 6.0, top: 13.0), child
            : Text(this._product.name,style: getStyleSubTitle(context),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.network(this._product.storeImage,
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.fill,),
                  Text(this._product.storeName)
                ],
              ),
              Text(this._product.price)
            ],
          )
        ],
      ),
    );
  }
}
