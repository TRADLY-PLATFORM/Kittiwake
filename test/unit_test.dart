import 'package:flutter_test/flutter_test.dart';
import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/usecase/use_case.dart';
import 'package:tradly_grocery_app/locator.dart';

void main() {
  setUpRealLocator();

  group('Tradly Grocery Flow', () {
    test('Login SHOULD Pass THEN RETURN true', () async {
      final loginUseCase = locator<UseCase<bool, ParamsLogin>>();
      final paramsLogin = ParamsLogin(
          uuid: '', email: 'mthahaseen@gmail.com', password: '12345678');
      final loginResponse = await loginUseCase.execute(paramsLogin);
      expect(loginResponse.isLeft, true);
      expect(loginResponse.left, true);
    });
  });
}
