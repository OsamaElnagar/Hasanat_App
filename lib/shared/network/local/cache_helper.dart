import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean(
    String key,
    bool value,
  ) async {
    return await sharedPreferences.setBool(key, value);
  }

  static bool? getBoolean({
    required String key,
  }) {
    return sharedPreferences.getBool(key);
  }

  static Future setCounter(String key, int value) async {
    return await sharedPreferences.setInt(key, value);
  }

  static dynamic getCounter(String key) {
    return sharedPreferences.get(key);
  }
}
