import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:tradly_grocery_app/data/model/app_exception.dart';
import 'package:tradly_grocery_app/data/model/base_error_response.dart';
import 'package:tradly_grocery_app/data/model/map_request.dart';
import 'package:tradly_grocery_app/data/source/remote/method.dart';
import 'package:tradly_grocery_app/data/utils/app_log_helper.dart';
import 'package:tradly_grocery_app/data/utils/data_constants.dart';


abstract class WebServiceHelper {

  final log = getLogger('API');

  String get getBaseUrl;

  final String _tagRequest = '====== Request =====>';
  final String _tagResponse = '====== Response =====>';

  final JsonDecoder _decoder = JsonDecoder();

  Map<String, String> _headers = {
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader: 'application/json',
    DataConstants.AUTHORIZATION_KEY: DataConstants.AUTHORIZATION_VALUE,
  };

  Future call(
      {required String path,
        Map<String, String>? headers,
        Encoding? encoding,
        required Method method,
          MapRequest? body}) async {
    Response responseData;
    final url = Uri.parse(getBaseUrl + path);
    log.i('$_tagRequest $url');
    if (headers == null) {
      headers = this._headers;
    } else {
      headers.addAll(this._headers);
    }
    try {
      switch (method) {
        case Method.GET:
          responseData = await get(url, headers: headers);
          break;
        case Method.POST:
          Map<String,dynamic>? map = body?.toMap();
          if(encoding == null) {
            responseData = await post(url,
                body: json.encode(map),
                headers: headers);
          }else{
            responseData = await post(url,
                body: json.encode(map),
                headers: headers,
                encoding: encoding);
          }
          break;
        case Method.PUT:
          if(encoding == null) {
            responseData = await put(url,
                body: json.encode(body?.toMap()),
                headers: headers);
          }else{
            responseData = await put(url,
                body: json.encode(body?.toMap()),
                headers: headers,
                encoding: encoding);
          }
          break;
        case Method.DELETE:
          responseData = await delete(url, headers: headers);
          break;
      }
      log.i('$_tagResponse ${responseData.body}');
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return this._returnResponse(responseData);
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        var responseJson = _decoder.convert(response.body);
        return responseJson;
      default:
        try{
          var responseJson = _decoder.convert(response.body);
          final errorResponse = BaseErrorResponse.fromJson(responseJson);
          throw TradlyException(errorResponse);
        } catch(e) {
          if(e is TradlyException){
            throw e;
          }
          throw AppException(
              'Error occurred while Communication with Server with StatusCode : ${response
                  .statusCode}');
        }
    }
  }
}
