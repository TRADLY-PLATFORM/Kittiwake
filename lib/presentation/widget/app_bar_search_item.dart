import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';

class AppBarSearchItem extends StatelessWidget implements PreferredSizeWidget {

  late final double _width;
  late final double _height;

  AppBarSearchItem({required double width, required double height}):this._width = width,this._height = height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0, left: 8.0, right: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 12.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Product',
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.search,
                  color: AppColors.PURE_BLACK,
                ),
              ),
              contentPadding: EdgeInsets.only(
                bottom: 14.0,
                top: 14.0,
                left: 24.0,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.transparent)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),
    );
  }

  @override
  Size get preferredSize => Size(this._width, this._height);
}
