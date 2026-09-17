import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';

//default style
TextStyle? getStyleButton(BuildContext context) =>
    Theme.of(context).textTheme.labelLarge;

TextStyle? getStyleOverLine(BuildContext context) =>
    Theme.of(context).textTheme.labelSmall;

TextStyle? getStyleCaption(BuildContext context) =>
    Theme.of(context).textTheme.bodySmall;

TextStyle? getStyleBody1(BuildContext context) =>
    Theme.of(context).textTheme.bodyMedium;

TextStyle? getStyleBody2(BuildContext context) =>
    Theme.of(context).textTheme.bodyLarge;

TextStyle? getStyleSubHeading(BuildContext context) =>
    Theme.of(context).textTheme.titleMedium;

TextStyle? getStyleSubTitle(BuildContext context) =>
    Theme.of(context).textTheme.titleSmall;

TextStyle? getStyleTitle(BuildContext context) =>
    Theme.of(context).textTheme.titleLarge;

TextStyle? getStyleHeading(BuildContext context) =>
    Theme.of(context).textTheme.headlineSmall;

TextStyle? getStyleDisplay1(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium;

TextStyle? getStyleDisplay2(BuildContext context) =>
    Theme.of(context).textTheme.headlineLarge;

TextStyle? getStyleDisplay3(BuildContext context) =>
    Theme.of(context).textTheme.displaySmall;

//style : app form style
TextStyle? getAppButtonStyle(BuildContext context) =>
    getStyleSubTitle(context)?.copyWith(
      color: AppColors.NATIVE_GREEN,
      fontWeight: AppFont.fontWeightSemiBold,
    );

//style: app backdrop title style
TextStyle? getAppBackDropTitleStyle(BuildContext context) =>
    getStyleHeading(context)?.copyWith(
      color: AppColors.NATIVE_GREEN,
      fontWeight: AppFont.fontWeightRegular,
    );

//style : app button text style
TextStyle? getStyleButtonText(BuildContext context) =>
    getStyleSubHeading(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightSemiBold);

//style : app button text style
TextStyle? getStyleForSmallText(BuildContext context) => getStyleBody1(context)
    ?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightLight);

TextStyle? getStyleForSubHeadSemiBoldText(BuildContext context) =>
    getStyleSubHeading(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightSemiBold);

TextStyle? getStyleForTitleBoldText(BuildContext context) =>
    getStyleSubTitle(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle? getStyleForHeadingBoldText(BuildContext context) =>
    getStyleHeading(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle? getStyleForDisplay1BoldText(BuildContext context) =>
    getStyleDisplay1(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightBold);

TextStyle? getStyleForHeadingMediumText(BuildContext context) =>
    getStyleHeading(context)?.copyWith(
        color: AppColors.NATIVE_GREEN, fontWeight: AppFont.fontWeightMedium);