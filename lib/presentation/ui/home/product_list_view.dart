import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tradly_grocery_app/presentation/ui/home/product_view.dart';
import 'package:tradly_grocery_app/presentation/model/product.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class ProductListView extends StatelessWidget {
  final String _name;
  final List<Product> _products;

  ProductListView({required String name,required List<Product> products})
      : this._name = name,this._products = products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(this._name,style: getStyleTitle(context)?.copyWith(
                color: Colors.black,
                fontWeight: AppFont.fontWeightBold,)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: getStyleSubHeading(context)?.copyWith(
                        color: Colors.white,
                        fontWeight: AppFont.fontWeightRegular),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 24.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black),
                      ))))
            ],
          ),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: this._products.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  Padding(padding:EdgeInsets.only(left: 4.0),child: ProductView(product: this._products[index]))),
        )
      ],
    );
  }
}
