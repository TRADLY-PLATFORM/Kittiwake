import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/model/product.dart';
import 'package:tradly_grocery_app/presentation/model/store.dart';
import 'package:tradly_grocery_app/presentation/ui/home/product_view.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/widget/app_bar_search_item.dart';

class BrowsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Browse',
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
      body: Column(
        children: [
          Container(
            color: AppColors.PURE_BLACK,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 8.0, left: 12.0, right: 12.0),
              child: Row(
                children: [
                  this._buildFilter(Icons.sort,'Sort by'),
                  this._buildFilter(Icons.location_on,'Location'),
                  this._buildFilter(Icons.list,'Category'),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 180/242,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0),
              itemBuilder: (context,index) => ProductView(product: Product(
                  image: "https://picsum.photos/200/${200+index}",
                  name: "Apple",
                  store: Store( name: "Tradly",
                      image:"https://picsum.photos/200/${200+index}"),
                  price: "\$100")),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilter(IconData icon,String name) {
    return Padding(
      padding: EdgeInsets.only(right:10.0),
      child: Chip(
        label: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        avatar: Icon(
          icon,
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        backgroundColor: Colors.black,
        shape: StadiumBorder(side: BorderSide(color: Colors.white)),
      ),
    );
  }
}
