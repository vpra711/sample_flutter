import 'package:sample/modules/login/domain/entities/user_entity.dart';

abstract class UserRepository 
{
  Future<UserEntity?> getUserData({required String username});
  // void setUserData({required UserEntity user});
  // UserEntity checkUserData({required String username, required String password});
}