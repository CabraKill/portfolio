import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/route/nav.dart';
import 'package:portfolio/route/routes.dart';

void main() => runApp(GetMaterialApp(
      initialRoute: Routes.HOME,
      getPages: Nav.routes,
    ));
