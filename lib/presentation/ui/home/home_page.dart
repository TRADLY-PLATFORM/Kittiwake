import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/model/banner_item.dart';
import 'package:tradly_grocery_app/presentation/ui/home/banner_carousel_slider.dart';
import 'package:tradly_grocery_app/presentation/ui/home/product_list_view.dart';
import 'package:tradly_grocery_app/presentation/ui/home/store_list_view.dart';
import 'package:tradly_grocery_app/presentation/model/product.dart';
import 'package:tradly_grocery_app/presentation/model/store.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_constants.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/widget/app_bar_search_item.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LIGHT_BLUE,
        appBar: AppBar(
            centerTitle: false,
            brightness: Brightness.dark,
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              AppConstants.GROCERIES,
              style: getStyleTitle(context)?.copyWith(
                  color: Colors.white, fontWeight: AppFont.fontWeightBold),
            ),
            elevation: 6.0,
            actions: [
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
            ],
            bottom: AppBarSearchItem(
                width: MediaQuery.of(context).size.width,
                height: kToolbarHeight + 16.0)),
        body: SingleChildScrollView(
          child: Column(children: [
            BannerCarouselSlider(banners: List.generate(6,
                    (index) => BannerItem(image: "https://picsum.photos/800/${250+index}"))),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: GridView.builder(
                  itemCount: 8,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0),
                  itemBuilder: (context, index) =>
                      Image.network("https://picsum.photos/100/${100+index}",
                      fit: BoxFit.fill)),
            ),
            ProductListView(name: "New Product",products: List.generate(10, (index) => Product(
                image: "https://picsum.photos/${200+index}",
                name: "Orange",
                store: Store( name: "Tradly",
                image:"https://picsum.photos/200/${200+index}"),
                price: "\$20"))),
            ProductListView(name: "Popular Product",products: List.generate(10, (index) => Product(
                image: "https://picsum.photos/200/${200+index}",
                name: "Apple",
                store: Store( name: "MN Store",
                    image:"https://picsum.photos/200/${200+index}"),
                price: "\$100"))),
             StoreListView(name: "Store to follow",stores:List.generate(10, (index) =>
                 Store(name:"Tradly",image: "https://picsum.photos/200/${100+index}")))
          ]),

        ));
  }
}
