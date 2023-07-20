import 'package:get/get.dart';
import '../views/home/home_view.dart';


class AppPages {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/home',
      page: () => Home(),

    ),

  ];
}
