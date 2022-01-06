import 'package:get/get.dart';
import '../providers/post_provider.dart';

class PostController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    PostProvider().getPost().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
