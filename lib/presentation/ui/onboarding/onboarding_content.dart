import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class OnBoardingContent extends StatelessWidget {
  late final String _assetName;
  late final String _title;

  OnBoardingContent({required String assetName,required String title})
      : this._assetName = assetName,
        this._title = title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                  child: Image.asset(
                    'assets/${this._assetName}',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48.0),
                child: Text(
                  this._title,
                  style: getStyleTitle(context)?.copyWith(
                    color: AppColors.PURE_BLACK,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
