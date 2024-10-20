import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/modules/login/data/models/user.dart';

part "list_user.freezed.dart";
part "list_user.g.dart";

@freezed
class ListUser with _$ListUser {
  
  const ListUser._();

  const factory ListUser({required List<UserModel> users}) = _ListUser;

  factory ListUser.fromJson(Map<String, Object?> json) =>
      _$ListUserFromJson(json);
}
