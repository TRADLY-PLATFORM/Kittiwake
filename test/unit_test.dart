import 'package:flutter_test/flutter_test.dart';
import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';
import 'package:tradly_grocery_app/locator.dart';

void main(){
  setUpRealLocator();

  group('Tradly Grocery Flow', () {
    test('Login SHOULD Pass THEN RETURN true', () async {
      final loginUseCase = locator<LoginUseCase>();
      final paramsLogin = ParamsLogin(uuid: '', email: 'mthahaseen@gmail.com', password: '12345678');
      final loginResponse = await loginUseCase.execute(paramsLogin);
      expect(loginResponse.isRight, true);
      expect(loginResponse.right, true);
    });
  });
}