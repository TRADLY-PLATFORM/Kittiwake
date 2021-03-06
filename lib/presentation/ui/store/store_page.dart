
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class StorePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: false,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Store',
        style: getStyleTitle(context)?.copyWith(
            color: Colors.white, fontWeight: AppFont.fontWeightBold),
      ),
      elevation: 4.0,
      actions: [
        IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
      ],
    ));
  }
}
