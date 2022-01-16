import 'package:flutter/material.dart';
import 'package:flutter_application_15/app/modules/navigation/local_widgets/bottom_nab_bar.dart';

import 'package:get/get.dart';

class ContactView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'ContactView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
