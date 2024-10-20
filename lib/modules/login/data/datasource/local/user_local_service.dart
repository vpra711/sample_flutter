import 'dart:convert';

import 'package:sample/modules/login/data/models/list_user.dart';
import 'package:sample/modules/login/data/models/user.dart';

class LocalDataService {
  static Future<UserModel?> userData({required String username}) async {
    await Future.delayed(const Duration(seconds: 5));
    const users = """
          [
            {
                "username": "user1",
                "password": "password1"
            },
            {
                "username": "user2",
                "password": "password2"
            },
            {
                "username": "user3",
                "password": "password3"
            }
          ]
          """;

    final parsedUsers = jsonDecode(users) as Map<String, Object?>;

    final decodedJson = ListUser.fromJson(parsedUsers);

    return decodedJson.users.where((element) => element.username == username).firstOrNull;
  }
}
