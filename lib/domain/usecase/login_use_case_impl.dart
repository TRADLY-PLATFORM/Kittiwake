import 'package:tradly_grocery_app/data/repo/repository.dart';
import 'package:tradly_grocery_app/domain/model/response.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';

class LoginUseCaseImpl implements LoginUseCase{

  final Repository _repository;

  LoginUseCaseImpl(this._repository);

  @override
  Future<Response<bool>> login(String uuid, String email, String password) {
    return this._repository
        .login(uuid, email, password)
        .then((status) => Response.success(data:status))
        .catchError((e) => Response<bool>.failure(message: e.toString()));
  }
}