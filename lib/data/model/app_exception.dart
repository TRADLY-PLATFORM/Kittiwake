import 'package:tradly_grocery_app/data/model/base_error_response.dart';

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);


  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String message])
      : super(message, 'Error During Communication: ');
}

class TradlyException implements Exception{
  final BaseErrorResponse baseErrorResponse;

  TradlyException(this.baseErrorResponse);

  String toString() {
    final error = this.baseErrorResponse.errorResponse;
    return "Error Code: ${error.code} \nMessage: ${error.message}";
  }
}
