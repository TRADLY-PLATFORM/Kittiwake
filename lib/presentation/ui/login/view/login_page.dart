import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/presentation/ui/login/view_model/login_view_model.dart';
import 'package:tradly_grocery_app/presentation/ui/main/main_page.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view.dart';
import 'package:tradly_grocery_app/presentation/view_model/view_state.dart';
import 'package:tradly_grocery_app/presentation/widget/app_circular_progress_indicator.dart';
import 'package:tradly_grocery_app/presentation/widget/modal_progress_hud.dart';

class LoginPage extends StatelessWidget {
  static const ROUTE_NAME = '/login';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (buildContext, model, widget) => ModalProgressHUD(
        inAsyncCall: ViewState.Busy == model.state,
        progressIndicator: AppCircularProgressIndicator(),
        color: AppColors.SILVER,
        child: Scaffold(
          key: this._scaffoldKey,
          backgroundColor: AppColors.PURE_BLACK,
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) => Center(
                child: Container(
                  width: constraints.maxWidth > 400.0
                      ? 400.0
                      : constraints.maxWidth,
                  padding:
                      EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Welcome to tradly',
                            style: getStyleHeading(context)
                                ?.copyWith(color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.only(top: 66.0),
                            child: Text(
                              'Login to your account',
                              style: getStyleSubHeading(context)
                                  ?.copyWith(color: Colors.white),
                            )),
                        Form(
                          key: this._formKey,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 45.0),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                controller: this._usernameController,
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter Email/Mobile Number';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email/Mobile Number',
                                  errorStyle: TextStyle(color: AppColors.PINK),
                                  hintStyle: TextStyle(color: Colors.white),
                                  contentPadding: EdgeInsets.only(
                                      bottom: 18.0,
                                      top: 18.0,
                                      left: 18.0,
                                      right: 18.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                          color: AppColors.NATIVE_GREEN)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: AppColors.PINK)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: AppColors.PINK)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                controller: this._passwordController,
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter password';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  errorStyle: TextStyle(color: AppColors.PINK),
                                  hintStyle: TextStyle(color: Colors.white),
                                  contentPadding: EdgeInsets.only(
                                      bottom: 18.0,
                                      top: 18.0,
                                      left: 18.0,
                                      right: 18.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                        color: AppColors.NATIVE_GREEN),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: AppColors.PINK)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide:
                                          BorderSide(color: AppColors.PINK)),
                                ),
                              ),
                            )
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 38.0),
                          child: Container(
                            width: double.infinity,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.only(
                                        top: 16.0, bottom: 16.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0))),
                                child: Text(
                                  'Login',
                                  style: getStyleButtonText(context),
                                ),
                                onPressed: () async {
                                  if (this._formKey.currentState != null &&
                                      this._formKey.currentState!.validate()) {
                                    FocusScope.of(context).unfocus();
                                    await model.login(
                                        "",
                                        this._usernameController.text,
                                        this._passwordController.text);
                                    model.loginResponse.receive((success) {
                                      if (success) {
                                        Navigator.pushReplacementNamed(
                                            context, MainPage.ROUTE_NAME);
                                      }
                                    },
                                        (failure) => this._buildSnackBar(
                                            buildContext, failure));
                                  }
                                }),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 33.0),
                            child: Text(
                              'Forgot your password?',
                              style: getStyleTitle(context)
                                  ?.copyWith(color: Colors.white),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 45.0),
                          child: Wrap(
                            children: [
                              Text('Don\'t have an account?',
                                  style: getStyleTitle(context)
                                      ?.copyWith(color: Colors.white)),
                              InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(4.0),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Text('Sign up',
                                      style: getStyleTitle(context)?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _buildSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar(reason: SnackBarClosedReason.dismiss)
      ..showSnackBar(snackBar);
  }

  Widget _call<T>(
      {required Either<T, String>? response,
      required Widget Function() onInitial,
      required Widget Function(T) onSuccess,
      required Widget Function(String) onFailure}) {
    return response?.fold(
            (response) => onSuccess(response), (error) => onFailure(error)) ??
        onInitial();
  }
}
