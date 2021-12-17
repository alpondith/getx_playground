import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Counter Page'),
              onPressed: () {
                Get.toNamed('/counter');
              },
            ),
            Obx(
              () => Text(
                controller.counterController.count.toString(),
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('+'),
                  onPressed: () {
                    controller.counterController.increment();
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Text('-'),
                  onPressed: () {
                    controller.counterController.decrement();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
