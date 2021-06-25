import 'package:tradly_grocery_app/data/model/login_request.dart';

abstract class WebService {
Future<dynamic> login(final LoginRequest loginRequest);
}