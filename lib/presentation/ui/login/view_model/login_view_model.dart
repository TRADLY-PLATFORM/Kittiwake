import 'package:either_dart/either.dart';
import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/model/response.dart';
import 'package:tradly_grocery_app/domain/usecase/use_case.dart';
import 'package:tradly_grocery_app/presentation/view_model/base_view_model.dart';
import 'package:tradly_grocery_app/presentation/view_model/view_state.dart';

class LoginViewModel extends BaseViewModel{

  final UseCase<bool,ParamsLogin> _loginUseCase;

  late Response<bool> _loginResponse;

  LoginViewModel(this._loginUseCase);

  Response<bool> get loginResponse => _loginResponse;

  Future login(final String uuid,final String email,final password) async {
    setState(ViewState.Busy);
    final paramsLogin = ParamsLogin(uuid: uuid, email: email, password: password);
    this._loginResponse = await this._loginUseCase.execute(paramsLogin);
    setState(ViewState.Idle);
  }

}