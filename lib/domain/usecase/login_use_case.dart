import 'package:tradly_grocery_app/domain/model/response.dart';

abstract class LoginUseCase{
  Future<Response<bool>> login(final String uuid,final String email,final String password);
}