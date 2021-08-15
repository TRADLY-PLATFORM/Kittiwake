import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/home/store_view.dart';
import 'package:tradly_grocery_app/presentation/model/store.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class StoreListView extends StatelessWidget {
  final String _name;
  final List<Store> _stores;

  StoreListView({required String name,required List<Store> stores}) : this._name = name,this._stores = stores;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 310,
        child: Stack(
          children: [
            Container(
              height: 200,
              color: AppColors.PURE_BLACK,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12.0,bottom:6.0,left: 16.0,right:16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(this._name,style: getStyleTitle(context)?.copyWith(
                        color: Colors.white,
                        fontWeight: AppFont.fontWeightBold,)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: getStyleSubHeading(context)?.copyWith(
                                color: AppColors.PURE_BLACK,
                                fontWeight: AppFont.fontWeightRegular),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(horizontal: 24.0)),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white),
                                  ))))
                    ],
                  ),
                ),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      itemCount: this._stores.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: StoreView(store: this._stores[index]))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
