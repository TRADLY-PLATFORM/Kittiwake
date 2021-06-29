import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/widget/app_bar_search_item.dart';

class BrowsePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
            height: kToolbarHeight + 16.0)),);
  }
}
