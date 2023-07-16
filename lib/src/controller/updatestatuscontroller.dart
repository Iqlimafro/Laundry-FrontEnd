import 'package:get/get.dart';
import 'package:laundry/src/router/constant.dart';

import '../config/constants_config.dart';
import '../services/api.dart';

class UpdateController extends GetxController {
  var isLoading = false.obs;

  Future<void> updateStat(
    String id,
    String weight,
    String value,
    String status,
  ) async {
    isLoading.value = true;
    final response = await ApiService().updateStatus(
      id,
      value,
      weight,
      status,
    );

    if (response != null) {
      isLoading.value = false;
      getToast(response.message!);
      Get.offAllNamed(mitraRoute);
    } else {
      isLoading.value = false;
    }
  }
}
