import 'package:sample/core/services/service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends Service
{
  late SharedPreferences _preferences;

  @override
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  Future<bool> clear() async {
    return await _preferences.clear();
  }
}