import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../providers/post_provider.dart';

class PostController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    PostProvider().getPost().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      Get.snackbar(
        "Error", // title
        "$error", // message
        icon: const Icon(Icons.error),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
      );
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
