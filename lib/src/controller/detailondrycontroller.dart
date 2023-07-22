import 'package:get/get.dart';
import 'package:laundry/src/model/detaillondrymodel.dart';

import '../services/api.dart';

class DetailLaundryController extends GetxController {
  var isLoading = true.obs;
  var tes = DetailLaundryModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future detailLondry(String id) async {
    try {
      isLoading(true);
      var res = await ApiService().detaillondry(id);
      if (res != null) {
        tes.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
