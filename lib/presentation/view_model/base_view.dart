import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradly_grocery_app/locator.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatelessWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;
  final T model = locator<T>();

  BaseView({this.builder, this.onModelReady});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) {
        if (onModelReady != null) {
          onModelReady(model);
        }
        return model;
      },
      child: Consumer<T>(builder: builder),
    );
  }
}
