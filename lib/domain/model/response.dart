import 'package:flutter/foundation.dart';

class Response<T> {
  final Status _status;
  T _data;
  String _message;

  T get data => this._data;

  Status get status => this._status;

  String get message => this._message;

  Response.success({@required T data})
      : this._data = data,
        this._status = Status.SUCCESS;

  Response.failure({@required String message})
      : this._message = message,
        this._status = Status.FAILURE;

  @override
  String toString() {
    return "Status : $_status \n Message : $_message \n Data : $_data";
  }
}

enum Status { SUCCESS, FAILURE }
