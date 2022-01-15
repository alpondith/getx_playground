import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_playground/app/modules/bottom_navbar/local_widgets/custom_bottom_navbar.dart';


class DialpadView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DialPad'),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
