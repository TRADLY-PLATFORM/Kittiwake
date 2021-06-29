import 'package:tradly_grocery_app/data/model/base_json.dart';
import 'package:tradly_grocery_app/data/model/user_response.dart';

class LoginResponse implements BaseJson{

  late UserResponse _userResponse;

  UserResponse get userResponse => _userResponse;

  @override
  void fromJson(Map<String, dynamic> json) {
    this._userResponse = UserResponse.fromJson(json['user']);
  }

}