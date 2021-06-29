import 'package:tradly_grocery_app/locator.dart';

import 'base_json.dart';

class BaseResponse<T extends BaseJson> {

  late bool _status;
  late T _data;

  bool get status => this._status;

  T get data => this._data;

  BaseResponse.fromJson(Map<String, dynamic> json){
    this._status = json['status'];
    if(json['data']!=null) {
      this._data = locator<T>();
      this._data.fromJson(json['data']);
    }
  }

}