import 'package:flutter/cupertino.dart';

class UserEntity {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String profilePic;
  final bool emailVerified;
  final bool stripeConnected;
  final bool stripeConnectOnboarding;
  final String authKey;
  final String refreshKey;

  UserEntity(
      {@required this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.profilePic,
      @required this.emailVerified,
      @required this.stripeConnected,
      @required this.stripeConnectOnboarding,
      @required this.authKey,
      @required this.refreshKey});
}
