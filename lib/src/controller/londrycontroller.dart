import 'package:get/get.dart';
import 'package:laundry/src/model/listlondrymodel.dart';

import '../services/api.dart';

class LaundryController extends GetxController {
  var isLoading = true.obs;
  var user = ListLaundryModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future listLondry() async {
    try {
      isLoading(true);
      var res = await ApiService().gerlondry();
      if (res != null) {
        user.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
