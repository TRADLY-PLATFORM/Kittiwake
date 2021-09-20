import 'package:either_dart/src/either.dart';
import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/repo/repository.dart';
import 'package:tradly_grocery_app/domain/usecase/use_case.dart';

class LoginUseCase implements UseCase<bool, ParamsLogin> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<bool, String>> execute(ParamsLogin params) {
    return this
        ._repository
        .login(params.uuid, params.email, params.password)
        .then((status) {
      Either<bool, String> either = Left(status);
      return either;
    }).catchError((e) => Right<bool, String>(e.toString()));
  }
}
