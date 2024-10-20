// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListUser _$ListUserFromJson(Map<String, dynamic> json) {
  return _ListUser.fromJson(json);
}

/// @nodoc
mixin _$ListUser {
  List<UserModel> get users => throw _privateConstructorUsedError;

  /// Serializes this ListUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListUserCopyWith<ListUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUserCopyWith<$Res> {
  factory $ListUserCopyWith(ListUser value, $Res Function(ListUser) then) =
      _$ListUserCopyWithImpl<$Res, ListUser>;
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class _$ListUserCopyWithImpl<$Res, $Val extends ListUser>
    implements $ListUserCopyWith<$Res> {
  _$ListUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListUserImplCopyWith<$Res>
    implements $ListUserCopyWith<$Res> {
  factory _$$ListUserImplCopyWith(
          _$ListUserImpl value, $Res Function(_$ListUserImpl) then) =
      __$$ListUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> users});
}

/// @nodoc
class __$$ListUserImplCopyWithImpl<$Res>
    extends _$ListUserCopyWithImpl<$Res, _$ListUserImpl>
    implements _$$ListUserImplCopyWith<$Res> {
  __$$ListUserImplCopyWithImpl(
      _$ListUserImpl _value, $Res Function(_$ListUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$ListUserImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListUserImpl extends _ListUser {
  const _$ListUserImpl({required final List<UserModel> users})
      : _users = users,
        super._();

  factory _$ListUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListUserImplFromJson(json);

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ListUser(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListUserImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of ListUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListUserImplCopyWith<_$ListUserImpl> get copyWith =>
      __$$ListUserImplCopyWithImpl<_$ListUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListUserImplToJson(
      this,
    );
  }
}

abstract class _ListUser extends ListUser {
  const factory _ListUser({required final List<UserModel> users}) =
      _$ListUserImpl;
  const _ListUser._() : super._();

  factory _ListUser.fromJson(Map<String, dynamic> json) =
      _$ListUserImpl.fromJson;

  @override
  List<UserModel> get users;

  /// Create a copy of ListUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListUserImplCopyWith<_$ListUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
