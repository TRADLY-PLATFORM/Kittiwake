import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/browse/browse_page.dart';
import 'package:tradly_grocery_app/presentation/ui/home/home_page.dart';
import 'package:tradly_grocery_app/presentation/ui/main/main_view_model.dart';
import 'package:tradly_grocery_app/presentation/ui/main/navigation.dart';
import 'package:tradly_grocery_app/presentation/ui/orderhistory/order_history_page.dart';
import 'package:tradly_grocery_app/presentation/ui/profile/profile_page.dart';
import 'package:tradly_grocery_app/presentation/ui/store/store_page.dart';
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
              body: _getbody(model.currentNavigationIndex),
              bottomNavigationBar: BottomNavigationBar(
                showUnselectedLabels: true,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.PURE_BLACK,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 12.0,
                currentIndex: model.currentNavigationIndex,
                elevation: 4.0,
                type: BottomNavigationBarType.fixed,
                onTap: (index){
                  model.currentNavigationIndex = index;
                },
                items: this.navigationItems.entries.map((pair) =>
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.only(top:4.0,bottom: 6.0),
                          child: Icon(pair.value),
                        ), label: pair.key)).toList(),
              ),
            ));
  }

  Widget _getbody(int index){
    switch(Navigation.values[index]){
      case Navigation.HOME:
        return HomePage();
      case Navigation.BROWSE:
        return BrowsePage();
      case Navigation.STORE:
        return StorePage();
      case Navigation.ORDER_HISTORY:
        return OrderHistoryPage();
      case Navigation.PROFILE:
        return ProfilePage();
    }
  }
}
