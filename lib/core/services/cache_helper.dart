import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<void> saveUserToken(String token, String refreshToken) async {
    await _pref.setString("token", token);
    await _pref.setString("refreshToken", refreshToken);
  }

  // static Future<void> saveUserData(User userData) async {
  //   await _pref.setString("email", userData.email!);
  //   await _pref.setString("phoneNumber", userData.phoneNumber!);
  //   await _pref.setString("name", userData.username!);
  //   await _pref.setString("userImage", userData.profilePhotoUrl!);
  // }

  // static String? get userEmail => _pref.getString("email");
  // static String? get userPhone => _pref.getString("phoneNumber");
  // static String? get userName => _pref.getString("name");
  // static String? get userImage => _pref.getString("userImage");

  static String? get userToken => _pref.getString('token') ?? "";
  static String? get refreshToken => _pref.getString('refreshToken') ?? "";

  static Future<void> clearSession() async {
    await _pref.remove('token');
    await _pref.remove('refreshToken');
  }
}
