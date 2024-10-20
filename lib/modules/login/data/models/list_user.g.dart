// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListUserImpl _$$ListUserImplFromJson(Map<String, dynamic> json) =>
    _$ListUserImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListUserImplToJson(_$ListUserImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
