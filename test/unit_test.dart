import 'package:flutter_test/flutter_test.dart';
import 'package:tradly_grocery_app/domain/model/params_login.dart';
import 'package:tradly_grocery_app/domain/repo/repository.dart';
import 'package:tradly_grocery_app/domain/usecase/login_use_case.dart';

class FakeSuccessRepository implements Repository {
  @override
  Future<bool> login(String uuid, String email, String password) async =>
      true;
}

class FakeFailureRepository implements Repository {
  @override
  Future<bool> login(String uuid, String email, String password) async =>
      throw Exception('Invalid credentials');
}

void main() {
  group('LoginUseCase', () {
    test('SHOULD return success WHEN repository returns true', () async {
      final useCase = LoginUseCase(FakeSuccessRepository());
      final params = ParamsLogin(
          uuid: '', email: 'test@tradly.app', password: '12345678');
      final response = await useCase.execute(params);
      expect(response.isSuccess, true);
      expect(response.successData, true);
    });

    test('SHOULD return failure WHEN repository throws', () async {
      final useCase = LoginUseCase(FakeFailureRepository());
      final params =
          ParamsLogin(uuid: '', email: 'bad@tradly.app', password: 'wrong');
      final response = await useCase.execute(params);
      expect(response.isFailure, true);
      expect(response.failureData, contains('Invalid credentials'));
    });

    test('receive SHOULD route to onSuccess on success', () async {
      final useCase = LoginUseCase(FakeSuccessRepository());
      final response = await useCase.execute(
          ParamsLogin(uuid: '', email: 'a@b.co', password: 'pwd'));
      var called = '';
      response.receive((data) => called = 'success:$data',
          (err) => called = 'failure:$err');
      expect(called, 'success:true');
    });
  });
}
