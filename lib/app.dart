import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/helper/router.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_constants.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.TRADLY_GROCERY,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppFont.fontFamilyName,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.PURE_BLACK,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          labelLarge: TextStyle(fontWeight: AppFont.fontWeightRegular),
          bodySmall: TextStyle(fontWeight: AppFont.fontWeightRegular),
          bodyMedium: TextStyle(fontWeight: AppFont.fontWeightRegular),
          bodyLarge: TextStyle(fontWeight: AppFont.fontWeightRegular),
          titleMedium: TextStyle(fontWeight: AppFont.fontWeightRegular),
          titleLarge: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headlineSmall: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headlineMedium: TextStyle(fontWeight: AppFont.fontWeightRegular),
          headlineLarge: TextStyle(fontWeight: AppFont.fontWeightRegular),
          displaySmall: TextStyle(fontWeight: AppFont.fontWeightRegular),
          displayMedium: TextStyle(fontWeight: AppFont.fontWeightRegular),
          displayLarge: TextStyle(fontWeight: AppFont.fontWeightRegular),
          labelSmall: TextStyle(fontWeight: AppFont.fontWeightRegular),
          titleSmall: TextStyle(fontWeight: AppFont.fontWeightRegular),
        ),
        primaryColor: AppColors.PURE_BLACK,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: AppColors.PURE_BLACK),
        dialogTheme: const DialogThemeData(backgroundColor: Colors.transparent),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.initialRoute,
    );
  }
}
