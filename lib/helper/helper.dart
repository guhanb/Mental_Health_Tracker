import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  static String UserLoggedInKey = "LOGGEDINKEY";
  static String UserNameKey = "USERNAMEKEY";
  static String UserEmailKey = "USERIMAILKEY";

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(UserLoggedInKey);
  }
}
