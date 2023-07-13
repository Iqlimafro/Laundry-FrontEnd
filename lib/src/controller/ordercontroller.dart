import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';

import '../config/constants_config.dart';
import '../services/api.dart';

class OrderController extends GetxController {
  var isLoading = false.obs;

  Future<void> order(
    String deskripsi,
    String metode,
    String berat,
    String jumlah,
    String userid,
    String londryid,
  ) async {
    isLoading.value = true;
    final response = await ApiService().order(
      deskripsi,
      metode,
      berat,
      jumlah,
      userid,
      londryid,
    );

    if (response != null) {
      isLoading.value = false;
      getToast(response.message!);
      Get.offAllNamed(userRoute);
    } else {
      isLoading.value = false;
    }
  }
}
