import 'package:get/get.dart';
import 'package:laundry/src/model/itemmodel.dart';

import '../services/api.dart';

class ItemController extends GetxController {
  var isLoading = true.obs;
  var tes = ItemModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future listitem(String id) async {
    try {
      isLoading(true);
      var res = await ApiService().listitem(id);
      if (res != null) {
        tes.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
