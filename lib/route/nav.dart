import 'package:get/get.dart';
import 'package:portfolio/pages/home/home_Screen.dart';
import 'bindings/home_Bindings.dart';
import 'routes.dart';

class Nav {
  static final routes = [
    GetPage(
        name: Routes.HOME, page: () => HomeScreen(), binding: HomeBindings()),
  ];
}
