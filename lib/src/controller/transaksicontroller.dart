import 'package:get/get.dart';
import 'package:laundry/src/model/transaksimodel.dart';

import '../services/api.dart';

class TransaksiController extends GetxController {
  var isLoading = true.obs;
  var user = TransaksiModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future getTransaksi(String id) async {
    try {
      isLoading(true);
      var res = await ApiService().transaksi(id);
      if (res != null) {
        user.value = res;
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
