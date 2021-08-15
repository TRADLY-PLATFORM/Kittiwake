import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/model/banner_item.dart';
import 'package:tradly_grocery_app/presentation/ui/home/banner_carousel_item.dart';

class BannerCarouselSlider extends StatelessWidget {

  final List<BannerItem> _banners;

  BannerCarouselSlider({required List<BannerItem> banners}):this._banners = banners;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: CarouselSlider.builder(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            viewportFraction: 0.92,
          ),
          itemCount: this._banners.length,
          itemBuilder: (context,index,realIndex) =>
              BannerCarouselItem(bannerItem:this._banners[index]),
        )
    );
  }
}
