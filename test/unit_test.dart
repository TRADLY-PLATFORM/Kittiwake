import 'package:flutter_test/flutter_test.dart';
import 'package:tradly_grocery_app/domain/model/response.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';
import 'package:tradly_grocery_app/locator.dart';

void main(){
  setUpRealLocator();

  group('Tradly Grocery Flow', () {
    test('Login SHOULD Pass THEN RETURN true', () async {
      final loginUseCase = locator<LoginUseCase>();
      final loginResponse = await loginUseCase.login('', 'mthahaseen@gmail.com', '12345678');
      expect(loginResponse.status, Status.SUCCESS);
      expect(loginResponse.data, true);
    });
  });
}