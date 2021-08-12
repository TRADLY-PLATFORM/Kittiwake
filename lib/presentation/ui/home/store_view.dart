import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/model/store.dart';
import 'package:tradly_grocery_app/presentation/utils/app_font.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';

class StoreView extends StatelessWidget {

  final Store _store;

  StoreView({required Store store}) : this._store = store;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4.0,
        child: SizedBox(
          width: 180,
          height: 240,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0)),
                child: Image.network(this._store.image,
                    width: 180.0, height: 100.0, fit: BoxFit.fill),
              ),
              Positioned.fill(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    child: Image.network(
                      this._store.image,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      this._store.name,
                      style: getStyleTitle(context)?.copyWith(
                          color: Colors.black,
                          fontWeight: AppFont.fontWeightRegular),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:6.0,bottom: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Follow",
                          style: getStyleSubHeading(context)?.copyWith(
                              color: Colors.white,
                              fontWeight: AppFont.fontWeightRegular),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 24.0)),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black),
                                )))),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
