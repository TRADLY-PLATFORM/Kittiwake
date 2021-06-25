import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/home/home_page.dart';
import 'package:tradly_grocery_app/presentation/ui/main/main_view_model.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view.dart';

class MainPage extends StatelessWidget {

  static const ROUTE_NAME = '/main';

  final Map<String, IconData> navigationItems = {
    'Home': Icons.home,
    'Browse': Icons.search,
    'Store': Icons.store,
    'Order History': Icons.article_rounded,
    'Profile': Icons.person
  };

  @override
  Widget build(BuildContext context) {
    return BaseView<MainViewModel>(
        builder: (buildContext, model, widget) =>
            Scaffold(
              body: HomePage(),
              bottomNavigationBar: BottomNavigationBar(
                showUnselectedLabels: true,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.PURE_BLACK,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 12.0,
                currentIndex: 0,
                elevation: 4.0,
                type: BottomNavigationBarType.fixed,
                items: this.navigationItems.entries.map((pair) =>
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.only(top:4.0,bottom: 6.0),
                          child: Icon(pair.value),
                        ), label: pair.key)).toList(),
              ),
            ));
  }
}
