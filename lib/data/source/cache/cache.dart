import 'package:tradly_grocery_app/data/entities/user_entity.dart';

abstract class Cache{
  void setUserEntity(UserEntity userEntity);
  UserEntity getUserEntity();
  void clearUserEntity();
  void dispose();
}