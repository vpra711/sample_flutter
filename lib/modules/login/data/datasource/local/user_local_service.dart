import 'dart:convert';

import 'package:sample/modules/login/data/models/user.dart';

class LocalDataService {
  static Future<UserModel?> userData({required String username}) async {
    await Future.delayed(const Duration(seconds: 1));
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

    final parsedUsers = jsonDecode(users) as List<dynamic>;

    List<UserModel> decodedJson = parsedUsers.map((userJson) => UserModel.fromJson(userJson)).toList();

    return decodedJson
        .where((element) => element.username == username)
        .firstOrNull;
  }
}
