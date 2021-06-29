import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tradly_grocery_app/presentation/ui/login/view/login_page.dart';
import 'package:tradly_grocery_app/presentation/ui/onboarding/dots_indicator.dart';
import 'package:tradly_grocery_app/presentation/ui/onboarding/onboarding_content.dart';
import 'package:tradly_grocery_app/presentation/ui/onboarding/onboarding_view_model.dart';
import 'package:tradly_grocery_app/presentation/utils/app_colors.dart';
import 'package:tradly_grocery_app/presentation/utils/app_text_style.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view.dart';

class OnboardingPage extends StatelessWidget {
  static const ROUTE_NAME = '/';

  final PageController _controller = new PageController(initialPage: 0);
  final GlobalKey _pageViewKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardingViewModel>(
      builder: (buildContext,model,_) => SafeArea(
          child: LayoutBuilder(
              builder: (context, constraints) => Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: AppColors.PURE_BLACK,
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    ),
                    Container(
                      width: constraints.maxWidth > 400.0 ? 400.0: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          vertical: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: PageView(
                            key: _pageViewKey,
                            onPageChanged: (position) {
                              model.currentIndex = position;
                            },
                            controller: _controller,
                            children: [
                              OnBoardingContent(assetName: 'onboarding_one.png',title: 'Empowering Artisans, Farmers & Micro Business',),
                              OnBoardingContent(assetName: 'onboarding_two.png',title: 'Connecting NGOs, Social Enterprises with Communities',),
                              OnBoardingContent(assetName: 'onboarding_three.png',title: ' Donate, Invest & Support infrastructure projects',),
                            ],
                          )),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0,left: 24.0,right:24.0),
                            child: DotsIndicator(
                              color: AppColors.PURE_BLACK.withAlpha(80),
                              controller: _controller,
                              itemCount: 3,
                              onPageSelected: (value) {
                                this._controller.animateToPage(value,
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 32.0,left: 24.0,right:24.0),
                            child: Container(
                              width: double.infinity,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: AppColors.PURE_BLACK,
                                    padding:
                                        EdgeInsets.only(top: 16.0, bottom: 16.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0))),
                                child: Text(
                                  model.buttonLabel,
                                  style: getStyleButtonText(context)?.copyWith(color: Colors.white),
                                ),
                                onPressed: (){
                                  if(model.currentIndex < 2) {
                                    this._controller.animateToPage(
                                        model.currentIndex + 1,
                                        duration: Duration(milliseconds: 100),
                                        curve: Curves.easeInOut);
                                  }else{
                                    Navigator.pushReplacementNamed(context, LoginPage.ROUTE_NAME);
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]))
      ),
    );
  }
}

