import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/modules/login/domain/entities/user_entity.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel
{
  const UserModel._();
  
  const factory UserModel({required String name, required String username, required String password}) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(name: user.name, username: user.username, password: user.password);
  }
}

extension UserMapper on UserModel 
{
  UserEntity? toEntity() {
    return UserEntity(name: name, username: username, password: password);
  }
}