import 'package:tradly_grocery_app/data/model/base_json.dart';

class ErrorResponse implements BaseJson{

  late int _code;
  late String _message;

  ErrorResponse.fromJson(Map<String, dynamic> json){
    this.fromJson(json);
  }

  @override
  void fromJson(Map<String, dynamic> json) {
    this._code = json['code'];
    this._message = json['message'];
  }

  String get message => this._message;

  int get code => this._code;
}