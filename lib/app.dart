import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/helper/router.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_constants.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.TRADLY_GROCERY,
      theme: ThemeData(
        fontFamily: AppFont.fontFamilyName,
        textTheme: TextTheme(
          button: TextStyle(fontWeight: AppFont.fontWeightRegular),
          caption: TextStyle(fontWeight: AppFont.fontWeightRegular),
          bodyText2: TextStyle(fontWeight: AppFont.fontWeightRegular),
          bodyText1: TextStyle(fontWeight: AppFont.fontWeightRegular),
          subtitle1: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline6: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline5: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline4: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline3: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline2: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headline1: TextStyle(fontWeight: AppFont.fontWeightRegular),
          overline: TextStyle(fontWeight: AppFont.fontWeightRegular),
          subtitle2: TextStyle(fontWeight: AppFont.fontWeightRegular),
        ),
        primaryColor: AppColors.PURE_BLACK,
        accentColor: AppColors.PURE_BLACK,
        buttonColor: AppColors.PURE_BLACK,
        primaryColorBrightness: Brightness.light,
        accentColorBrightness: Brightness.light,
        brightness: Brightness.light,
        textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.PURE_BLACK),
        dialogBackgroundColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.initialRoute,
    );
  }
}
