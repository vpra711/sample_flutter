import 'package:sample/modules/login/data/datasource/local/user_local_service.dart';
import 'package:sample/modules/login/data/models/user.dart';
import 'package:sample/modules/login/domain/entities/user_entity.dart';
import 'package:sample/modules/login/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity?> getUserData({required String username}) async {
    return (await LocalDataService.userData(username: username))?.toEntity();
  }
}
