import 'package:tradly_grocery_app/data/model/base_json.dart';

class MetaDataResponse implements BaseJson{

  late bool _stripeConnected;
  late bool _stripeConnectOnboarding;

  MetaDataResponse.fromJson(Map<String, dynamic> json){
    this.fromJson(json);
  }

  bool get stripeConnected => this._stripeConnected;

  bool get stripeConnectOnboarding => this._stripeConnectOnboarding;

  @override
  void fromJson(Map<String, dynamic> json) {
    this._stripeConnected = json['stripe_connected'];
    this._stripeConnectOnboarding = json['stripe_connect_onboarding'];
  }


}