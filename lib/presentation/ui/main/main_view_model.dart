import 'package:tradly_grocery_app/presentation/view_model/base_view_model.dart';
import 'package:tradly_grocery_app/presentation/view_model/view_state.dart';

class MainViewModel extends BaseViewModel{

  int _currentNavigationIndex = 0;

  set currentNavigationIndex(int index){
    setState(ViewState.Busy);
    this._currentNavigationIndex = index;
    setState(ViewState.Idle);
  }

  int get currentNavigationIndex => this._currentNavigationIndex;

}