import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/loginmodel.dart';
import '../services/api.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var list = LoginModel().obs;
  Future<void> loginUsers(String email, String password) async {
    isLoading.value = true;
    final response = await ApiService().login(email, password);

    if (response != null) {
      list.value = response;
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("Token", response.accessToken!);
      // prefs.setString(
      //     "Role", response.user!.first.attributes!.roleId.toString());
      isLoading.value = false;
      // final role = await getRole();
      // if (role == '3') {
      //   Get.offAllNamed(NavKorKec.routeName);
      // } else if (role == '4') {
      //   Get.offAllNamed(NavKorDes.routeName);
      // } else if (role == '5') {
      //   Get.offAllNamed(NavRelawan.routeName);
      // }
    } else {
      isLoading.value = false;
    }
  }
}
