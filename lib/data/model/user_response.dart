import 'package:tradly_grocery_app/data/model/base_json.dart';
import 'package:tradly_grocery_app/data/model/key_response.dart';
import 'package:tradly_grocery_app/data/model/meta_data_response.dart';

class UserResponse implements BaseJson {
  late String _id;
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _profilePic;
  late bool _emailVerified;
  late MetaDataResponse _metadata;
  late KeyResponse _key;

  String get id => this._id;

  String get firstName => this._firstName;

  String get lastName => this._lastName;

  String get email => this._email;

  String get profilePic => this._profilePic;

  bool get emailVerified => this._emailVerified;

  MetaDataResponse get metadata => this._metadata;

  KeyResponse get key => this._key;

  UserResponse.fromJson(Map<String, dynamic> json) {
    this.fromJson(json);
  }

  @override
  void fromJson(Map<String, dynamic> json) {
    this._id = json['id'];
    this._firstName = json['first_name'];
    this._lastName = json['last_name'];
    this._email = json['email'];
    this._profilePic = json['profile_pic'];
    this._emailVerified = json['email_verified'];
    this._metadata = MetaDataResponse.fromJson(json['metadata']);
    this._key = KeyResponse.fromJson(json['key']);
  }
}
