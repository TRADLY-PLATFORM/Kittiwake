import 'package:flutter/material.dart';
import 'package:tradly_grocery_app/data/model/map_request.dart';
import 'package:tradly_grocery_app/data/model/user_request.dart';

class LoginRequest implements MapRequest {
  final UserRequest userRequest;

  LoginRequest({@required this.userRequest});

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user'] = this.userRequest.toMap();
    return data;
  }
}
