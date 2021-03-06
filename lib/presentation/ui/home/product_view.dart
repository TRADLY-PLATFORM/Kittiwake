import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/model/product.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class ProductView extends StatelessWidget {
  final Product _product;

  ProductView({required Product product}) : this._product = product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4.0,
        child: SizedBox(
          width: 180,
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0)),
                child: Image.network(this._product.image,
                    width: 180.0, height: 140.0, fit: BoxFit.fill),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 6.0, top: 13.0),
                  child: Text(this._product.name,
                      style: getStyleSubHeading(context)?.copyWith(
                          color: Colors.black,
                          fontWeight: AppFont.fontWeightRegular))),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.network(
                              this._product.store.image,
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Text(
                                  this._product.store.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: getStyleSubHeading(context)?.copyWith(
                                      color: AppColors.SILVER,
                                      fontWeight: AppFont.fontWeightRegular),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Offstage(
                          offstage: false,
                          child: Text(
                            this._product.price,
                            style: getStyleSubTitle(context)?.copyWith(
                                color: AppColors.SILVER,
                                fontWeight: AppFont.fontWeightRegular,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text(
                            this._product.price,
                            style: getStyleSubHeading(context)?.copyWith(
                                color: Colors.black,
                                fontWeight: AppFont.fontWeightBold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),Positioned.fill(child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Material(color: Colors.transparent,child: InkWell( onTap: (){},),),
      ))]
    );
  }
}
