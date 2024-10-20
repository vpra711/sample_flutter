import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sample/config/AppConstants/app_config.dart';


class LocalStorage
{
  static Box? _box;

  static Future init() async
  {
    if(_box != null)
    {
      return;
    }

    FlutterSecureStorage fss = GetIt.instance<FlutterSecureStorage>();
    var hivepath = await getApplicationDocumentsDirectory();
    Hive.init(hivepath.path);
    String? hiveKey = await fss.read(key: HiveConfig.userHive.value);

    if(hiveKey == null)
    {
      await fss.write(key: HiveConfig.userHive.value, value: base64UrlEncode(Hive.generateSecureKey()));
      hiveKey = await fss.read(key: HiveConfig.userHive.value);
    }
    
    _box = await Hive.openBox(HiveConfig.userHive.value, encryptionCipher: HiveAesCipher(base64Url.decode(hiveKey!)));
    log("hive initiated");
  }

  static Future<String?> read(String key) async
  {
    if(_box == null)
    {
      await init();
    }

    return _box!.get(key, defaultValue: null);
  }

  static Future write({required String key, required String value}) async
  {
    if(_box == null)
    {
      await init();
    }

    return await _box!.put(key, value);
  }

  static Future update({required String key, required String value}) async
  {
    if(_box == null)
    {
      await init();
    }

    return await _box!.put(key, value);
  }

  static Future delete(String key) async
  {
    if(_box == null)
    {
      await init();
    }

    return await _box!.delete(key);
  }
}