import 'package:tradly_grocery_app/data/model/base_error_response.dart';
import 'package:tradly_grocery_app/data/utils/app_log_helper.dart';

final log = getLogger('API');

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication: ');
}

class TradlyException extends AppException{

  TradlyException(BaseErrorResponse baseErrorResponse):
        super('Error Code: ${baseErrorResponse.errorResponse.code}',
          '\nMessage: ${baseErrorResponse.errorResponse.message}');

  String toString() {
    log.i(super.toString());
    return super.toString();
  }
}
