import 'package:tradly_grocery_app/data/model/base_json.dart';
import 'package:tradly_grocery_app/data/model/error_response.dart';

class BaseErrorResponse implements BaseJson{

  ErrorResponse _errorResponse;
  int _timeStamp;

  BaseErrorResponse.fromJson(Map<String, dynamic> json){
    this.fromJson(json);
  }

  @override
  void fromJson(Map<String, dynamic> json) {
    this._errorResponse = ErrorResponse.fromJson(json['error']);
    this._timeStamp = json['timestamp'];
  }

  int get timeStamp => this._timeStamp;

  ErrorResponse get errorResponse => this._errorResponse;
}