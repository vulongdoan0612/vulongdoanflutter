import 'package:get/get.dart';

class DetailController extends GetxController {
  var fav = 0.obs;
  void favCounter() {
    if (fav.value == 1) {
      Get.snackbar('Thong bao', 'Da them vao danh sach thanh cong');
    } else {
      fav.value++;
      Get.snackbar('Thong bao', 'Ban da them vao danh sach nay roi!!!!!');
    }
  }
}
