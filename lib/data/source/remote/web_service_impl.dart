import 'dart:io';

import 'package:tradly_grocery_app/data/model/login_request.dart';
import 'package:tradly_grocery_app/data/source/remote/method.dart';
import 'package:tradly_grocery_app/data/source/remote/web_service.dart';
import 'package:tradly_grocery_app/data/source/remote/web_service_helper.dart';
import 'package:tradly_grocery_app/data/utils/data_constants.dart';
import 'package:tradly_grocery_app/data/utils/url_path.dart';

class WebServiceImpl extends WebServiceHelper implements WebService{

  @override
  String get getBaseUrl => Platform.environment['host_name'] ?? 'https://api.sandbox.tradly.app';

  @override
  Future<dynamic> login(LoginRequest loginRequest){
    return call(path: URLPath.LOGIN, method: Method.POST,body: loginRequest);
  }

}