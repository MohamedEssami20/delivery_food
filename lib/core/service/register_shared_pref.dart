import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static late SharedPreferences _prefs;

  static Future<void> registerSharedPref() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setBoolean(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  static Future<bool?> getBoolean(String key) async {
    return _prefs.getBool(key);
  }


  static Future<void>setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    return _prefs.getString(key);
  }
}
