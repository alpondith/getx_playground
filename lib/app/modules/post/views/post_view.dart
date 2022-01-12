import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Network Call'),
      ),
      body: controller.obx(
        (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // back to home
              ElevatedButton(
                child: const Text('Back to Home'),
                onPressed: () => Get.back(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(data['id'].toString()),
              const SizedBox(
                height: 10.0,
              ),
              Text(data['title']),
              const SizedBox(
                height: 10.0,
              ),
              Text(data['body']),
            ],
          ),
        ),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error) => Center(
          child: ElevatedButton(
            child: const Text('Back'),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        onEmpty: const Text("Empty"),
      ),
    );
  }
}
