import 'package:tradly_grocery_app/domain/model/response.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view_model.dart';
import 'package:tradly_grocery_app/presentation/view_model/view_state.dart';

class LoginViewModel extends BaseViewModel{

  final LoginUseCase _loginUseCase;

  late Response<bool> _response;

  LoginViewModel(this._loginUseCase);

  Response<bool> get response => _response;

  Future login(final String uuid,final String email,final password) async {
    setState(ViewState.Busy);
    this._response = await this._loginUseCase.login(uuid, email, password);
    setState(ViewState.Idle);
  }

}