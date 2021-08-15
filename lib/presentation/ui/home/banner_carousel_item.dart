import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/model/banner_item.dart';

class BannerCarouselItem extends StatelessWidget {

  final BannerItem _bannerItem;

  const BannerCarouselItem({required BannerItem bannerItem}):this._bannerItem = bannerItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      margin: EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        child: Image.network(this._bannerItem.image,
            fit: BoxFit.cover),
      ),
    );
  }
}
