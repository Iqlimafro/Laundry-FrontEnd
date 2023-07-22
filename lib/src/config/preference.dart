import 'package:shared_preferences/shared_preferences.dart';

Future setToken(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("Token", value);
}

Future getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("Token");
}

Future removeToken() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("Token");
}

Future setUsername(String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("username", value);
}

Future getUsername() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("username");
}

Future removeUsername() async {
  final SharedPreferences shared = await SharedPreferences.getInstance();
  return shared.remove("username");
}
