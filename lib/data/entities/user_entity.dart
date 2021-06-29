class UserEntity {
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String profilePic;
  late final bool emailVerified;
  late final bool stripeConnected;
  late final bool stripeConnectOnboarding;
  late final String authKey;
  late final String refreshKey;

  UserEntity(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.profilePic,
      required this.emailVerified,
      required this.stripeConnected,
      required this.stripeConnectOnboarding,
      required this.authKey,
      required this.refreshKey});
}
