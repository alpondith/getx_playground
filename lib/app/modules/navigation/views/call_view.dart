import 'package:flutter/material.dart';
import 'package:flutter_application_15/app/modules/navigation/local_widgets/bottom_nab_bar.dart';
import 'package:flutter_application_15/app/routes/app_pages.dart';

import 'package:get/get.dart';

class CallView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'CallView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
