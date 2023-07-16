import 'package:get/get.dart';
import 'package:laundry/src/model/ordermitramodel.dart';

import '../services/api.dart';

class OrderMitraController extends GetxController {
  var isLoading = true.obs;
  var order = OrderMitraModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future ordermitra(String id) async {
    try {
      isLoading(true);
      var res = await ApiService().mitraorder(id);
      if (res != null) {
        order.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
