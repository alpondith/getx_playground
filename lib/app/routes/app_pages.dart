import 'package:flutter_application_15/app/modules/navigation/views/call_view.dart';
import 'package:flutter_application_15/app/modules/navigation/views/contact_view.dart';
import 'package:flutter_application_15/app/modules/navigation/views/history_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CALL;

  static final routes = [
    GetPage(
      name: _Paths.CALL,
      page: () => CallView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.CONTACT,
      page: () => ContactView(),
      transition: Transition.noTransition,
    ),
  ];
}
