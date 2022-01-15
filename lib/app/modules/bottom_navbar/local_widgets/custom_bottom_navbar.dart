import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/app/routes/app_pages.dart';


class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Get.toNamed(Routes.CONTACT);
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Get.toNamed(Routes.DIALPAD);
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Get.toNamed(Routes.HISTORY);
            },
          ),
        ],
      ),
    );
  }
}
