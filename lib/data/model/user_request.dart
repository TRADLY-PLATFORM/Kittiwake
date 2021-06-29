import 'package:tradly_grocery_app/data/model/map_request.dart';
import 'package:tradly_grocery_app/data/utils/data_constants.dart';

class UserRequest implements MapRequest {
  final String uuid = DataConstants.UUID;
  late final String email;
  late final String password;
  final String type = DataConstants.CUSTOMER;

  UserRequest({required this.email, required this.password});

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['email'] = this.email;
    data['password'] = this.password;
    data['type'] = this.type;
    return data;
  }
}
