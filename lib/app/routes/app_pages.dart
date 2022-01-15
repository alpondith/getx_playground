import 'package:get/get.dart';
import 'package:getx_playground/app/modules/bottom_navbar/views/contact_view.dart';
import 'package:getx_playground/app/modules/bottom_navbar/views/dialpad_view.dart';
import 'package:getx_playground/app/modules/bottom_navbar/views/history_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CONTACT;

  static final routes = [
    GetPage(
      name: _Paths.CONTACT,
      page: () => ContactView(),
    ),
    GetPage(
      name: _Paths.DIALPAD,
      page: () => DialpadView(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
    ),
  ];
}
