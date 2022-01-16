import 'package:flutter/material.dart';
import 'package:flutter_application_15/app/routes/app_pages.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              Get.offAllNamed(Routes.CALL);
            },
          ),
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.offAllNamed(Routes.HISTORY);
            },
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              Get.offAllNamed(Routes.CONTACT);
            },
          ),
        ],
      ),
    );
  }
}
