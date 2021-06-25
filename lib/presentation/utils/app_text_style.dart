import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';

//default style
TextStyle getStyleButton(context) => Theme.of(context).textTheme.button;

TextStyle getStyleOverLine(context) => Theme.of(context).textTheme.overline;

TextStyle getStyleCaption(context) => Theme.of(context).textTheme.caption;

TextStyle getStyleBody1(context) => Theme.of(context).textTheme.bodyText2;

TextStyle getStyleBody2(context) => Theme.of(context).textTheme.bodyText1;

TextStyle getStyleSubHeading(context) => Theme.of(context).textTheme.subtitle1;

TextStyle getStyleSubTitle(context) => Theme.of(context).textTheme.subtitle2;

TextStyle getStyleTitle(context) => Theme.of(context).textTheme.headline6;

TextStyle getStyleHeading(context) => Theme.of(context).textTheme.headline5;

TextStyle getStyleDisplay1(context) => Theme.of(context).textTheme.headline4;

TextStyle getStyleDisplay2(context) => Theme.of(context).textTheme.headline3;

TextStyle getStyleDisplay3(context) => Theme.of(context).textTheme.headline2;

//style : app form style
TextStyle getAppButtonStyle(context) => getStyleSubTitle(context).copyWith(
  color: AppColors.NATIVE_GREEN,
  fontWeight: AppFont.fontWeightSemiBold,
);

//style: app backdrop title style
TextStyle getAppBackDropTitleStyle(context) =>
    getStyleHeading(context).copyWith(
      color: AppColors.NATIVE_GREEN,
      fontWeight: AppFont.fontWeightRegular,
    );

//style : app button text style
TextStyle getStyleButtonText(context) =>
    getStyleSubHeading(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightSemiBold);

//style : app button text style
TextStyle getStyleForSmallText(context) =>
    getStyleBody1(context).copyWith(color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightLight);

TextStyle getStyleForSubHeadSemiBoldText(context) =>
    getStyleSubHeading(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightSemiBold);

TextStyle getStyleForTitleBoldText(context) =>
    getStyleSubTitle(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle getStyleForHeadingBoldText(context) =>
    getStyleHeading(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle getStyleForDisplay1BoldText(context) =>
    getStyleDisplay1(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle getStyleForHeadingMediumText(context) =>
    getStyleHeading(context).copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightMedium);