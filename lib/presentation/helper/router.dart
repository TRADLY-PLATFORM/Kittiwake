import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/data/utils/app_log_helper.dart';
import 'package:tradly_grocery_app/presentation/ui/login/view/login_page.dart';
import 'package:tradly_grocery_app/presentation/ui/main/main_page.dart';
import 'package:tradly_grocery_app/presentation/ui/onboarding/onboarding_page.dart';



class AppRouter {
  static final _log = getLogger('Router');
  static Route<dynamic> generateRoute(RouteSettings settings) {
    _log.i(
        'generateRoute | to :${settings.name} arguments:${settings.arguments}');
    switch (settings.name) {
      case LoginPage.ROUTE_NAME:
        return _buildPageRoute(LoginPage(), settings);
      case MainPage.ROUTE_NAME:
        return _buildPageRoute(MainPage(), settings);
      case OnboardingPage.ROUTE_NAME:
        return _buildPageRoute(OnboardingPage(), settings);
      default:
        return CupertinoPageRoute(builder: (_) => Container());
    }
  }

  static MaterialPageRoute _buildPageRoute(
      Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => widget, settings: settings);
  }

  static String get initialRoute => OnboardingPage.ROUTE_NAME;
}
