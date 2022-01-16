import 'package:flutter/material.dart';
import 'package:flutter_application_15/app/modules/navigation/local_widgets/bottom_nab_bar.dart';

import 'package:get/get.dart';

class HistoryView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'HistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
