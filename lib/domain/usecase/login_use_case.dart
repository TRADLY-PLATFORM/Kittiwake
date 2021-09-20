import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/model/response.dart';
import 'package:tradly_grocery_app/domain/repo/repository.dart';
import 'package:tradly_grocery_app/domain/usecase/use_case.dart';

class LoginUseCase implements UseCase<bool, ParamsLogin> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Response<bool>> execute(ParamsLogin params) {
    return this
        ._repository
        .login(params.uuid, params.email, params.password)
        .then((status) => Response.success(status))
        .catchError((e) => Response<bool>.failure(e.toString()));
  }
}
