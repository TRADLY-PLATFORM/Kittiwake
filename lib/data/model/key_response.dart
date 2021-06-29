import 'package:tradly_grocery_app/data/model/base_json.dart';

class KeyResponse implements BaseJson {

  late String _authKey;
  late String _refreshKey;

  KeyResponse.fromJson(Map<String, dynamic> json){
    this.fromJson(json);
  }

  String get authKey => this._authKey;

  String get refreshKey => this._refreshKey;

  @override
  void fromJson(Map<String, dynamic> json) {
    this._authKey = json['auth_key'];
    this._refreshKey = json['refresh_key'];
  }


}