import 'package:tradly_grocery_app/data/entities/user_entity.dart';
import 'package:tradly_grocery_app/data/model/base_response.dart';
import 'package:tradly_grocery_app/data/model/login_request.dart';
import 'package:tradly_grocery_app/data/model/login_response.dart';
import 'package:tradly_grocery_app/data/model/user_request.dart';
import 'package:tradly_grocery_app/data/source/cache/cache.dart';
import 'package:tradly_grocery_app/data/source/remote/web_service.dart';

import 'data_store.dart';

class DataStoreImpl implements DataStore{

  final Cache _cache;
  final WebService _webService;


  DataStoreImpl(this._cache, this._webService);

  @override
  Future<bool> login(String uuid, String email, String password)  {
    UserRequest userRequest = UserRequest(email: email, password: password);
    LoginRequest loginRequest = LoginRequest(userRequest: userRequest);
    return this._webService.login(loginRequest).then((response) {
      final baseResponse = BaseResponse<LoginResponse>.fromJson(response);
      final user = baseResponse.data.userResponse;
      final entity = UserEntity(id: user.id, firstName: user.firstName, lastName: user.lastName,
          email: user.email, profilePic: user.profilePic, emailVerified: user.emailVerified,
          stripeConnected: user.metadata.stripeConnected,
          stripeConnectOnboarding: user.metadata.stripeConnectOnboarding,
          authKey: user.key.authKey, refreshKey: user.key.refreshKey);
      this._cache.setUserEntity(entity);
      return baseResponse.status;
    });
  }

}