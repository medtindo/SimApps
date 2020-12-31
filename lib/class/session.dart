import 'package:shared_preferences/shared_preferences.dart';

class Session {

  static setNilai(String key, dynamic val) async{
    final SharedPreferences nilai = await SharedPreferences.getInstance();
    await nilai.setString(key, val);
  }

  static getNilai(String key) async{
    final SharedPreferences nilai = await SharedPreferences.getInstance();
    return nilai.getString(key) ?? '';
  }

  static removeNilai(String key) async {
    final SharedPreferences nilai = await SharedPreferences.getInstance();
    nilai.remove(key);
  }
}
