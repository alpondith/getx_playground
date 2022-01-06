import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Network Call'),
      ),
      body: controller.obx(
        (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // back to home
              ElevatedButton(
                child: Text('Back to Home'),
                onPressed: () => Get.back(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(data['id'].toString()),
              SizedBox(
                height: 10.0,
              ),
              Text(data['title']),
              SizedBox(
                height: 10.0,
              ),
              Text(data['body']),
            ],
          ),
        ),
      ),
    );
  }
}
