import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/home/product_list_view.dart';
import 'package:tradly_grocery_app/presentation/ui/model/product.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_constants.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/widget/app_bar_search_item.dart';
import 'package:tradly_grocery_app/presentation/ui/home/product_view.dart';

class HomePage extends StatelessWidget {
  final List<MaterialColor> list = [
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.cyan,
    Colors.indigo,
    Colors.deepPurple,
    Colors.brown,
    Colors.lightGreen,
  ];

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
            elevation: 4.0,
            actions: [
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
            ],
            bottom: AppBarSearchItem(
                width: MediaQuery.of(context).size.width,
                height: kToolbarHeight + 16.0)),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: false,
                    aspectRatio: 2.0,
                    enableInfiniteScroll: false,
                  ),
                  items: list
                      .map((item) => Card(
                            margin: EdgeInsets.only(right: 16.0),
                            child: Center(),
                            color: item,
                            elevation: 4.0,
                          ))
                      .toList()),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: GridView.builder(
                  itemCount: list.length,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0),
                  itemBuilder: (context, index) => Container(
                        child: Center(),
                        color: list[index],
                      )),
            ),
            ProductListView(name: "New Product",products: List.generate(10, (index) => Product(
                image: "https://picsum.photos/200",
                name: "Orange",
                storeImage:
                "https://picsum.photos/200",
                storeName: "Tradly",
                price: "\$20"))),
            ProductListView(name: "Popular Product",products: List.generate(10, (index) => Product(
                image: "https://picsum.photos/200",
                name: "Apple",
                storeImage:
                "https://picsum.photos/200",
                storeName: "MN Store",
                price: "\$100")))
          ]),

        ));
  }
}
