import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.toString(),
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
                    controller.increment();
                    print(controller.count);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Text('-'),
                  onPressed: () {
                    controller.decrement();
                    print(controller.count);
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
