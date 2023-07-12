import 'package:get/get.dart';
import 'package:laundry/src/config/preference.dart';
import 'package:laundry/src/model/usermodel.dart';

import '../services/api.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var user = UserModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future getuser() async {
    try {
      isLoading(true);
      var res = await ApiService().getUser();
      if (res != null) {
        user.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
