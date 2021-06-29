import 'package:tradly_grocery_app/data/entities/user_entity.dart';

import 'cache.dart';

class CacheImpl implements Cache{

  late UserEntity _userEntity;

  @override
  void clearUserEntity() {
    this.clearUserEntity();
  }

  @override
  void dispose() {
    clearUserEntity();
  }

  @override
  UserEntity getUserEntity() {
    return this._userEntity;
  }

  @override
  void setUserEntity(UserEntity userEntity) {
    this._userEntity = userEntity;
  }

}