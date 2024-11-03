import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
   SharedPreferences? _prefs ;

   Future<void> registerSharedPref() async {
    _prefs = await SharedPreferences.getInstance();
  }
  Future<void> setBoolean(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  Future<bool?> getBoolean(String key) async {
    return _prefs?.getBool(key);
  }
}
