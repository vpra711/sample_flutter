import 'package:sample/modules/login/domain/entities/user_entity.dart';
import 'package:sample/modules/login/domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepository _userRepository;

  UserUseCase(this._userRepository);

  Future<UserEntity?> getUser({required String username}) async {
    return await _userRepository.getUserData(username: username);
  }
}
