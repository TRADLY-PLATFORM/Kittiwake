import 'package:tradly_grocery_app/presentation/view_model/base_view_model.dart';
import 'package:tradly_grocery_app/presentation/view_model/view_state.dart';

class OnBoardingViewModel extends BaseViewModel{

  int _currentPageIndex = 0;

  OnBoardingViewModel();

  String get buttonLabel => this._currentPageIndex == 2 ? 'Finish': 'Next';

  set currentIndex(int index) {
    setState(ViewState.Busy);
    this._currentPageIndex = index;
    setState(ViewState.Idle);
  }

  int get currentIndex => this._currentPageIndex;

}