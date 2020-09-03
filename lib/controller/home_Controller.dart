import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page.dart';
import 'package:portfolio/pages/subpages/Info/info_Page.dart';
import 'package:portfolio/pages/subpages/attendanceCabuto/attendance_Page.dart';

class _Rx {
  final RxInt currentPage = 0.obs;
  final RxString currentPageTitle = AttendancePage.title.obs;
  final Rx<Color> backgroundColor = AttendancePage.color.obs;
}

class HomeController extends GetxController {
  final rx = _Rx();
  final PageController pageController = PageController();

  static HomeController get to => Get.find();

  @override
  void onInit() {
    //ever(r)
    super.onInit();
  }

  void updateBackgroundColor() {
    switch (rx.currentPage.value) {
      case 0:
        backgroundColor = AttendancePage.color;
        rx.currentPageTitle.value = AttendancePage.title;
        break;
      case 1:
        backgroundColor = CactosolPage.color;
        rx.currentPageTitle.value = CactosolPage.title;
        break;
      case 2:
        backgroundColor = InfoPage.color;
        rx.currentPageTitle.value = InfoPage.title;
        break;
    }
  }

  void updateCurrentPage(int page) {
    rx.currentPage.value = page;
    updateBackgroundColor();
  }

  @override
  Future<void> onClose() {
    pageController.dispose();
    return super.onClose();
  }

  int get currentPage => rx.currentPage.value;
  String get currentPageTitle => rx.currentPageTitle.value;
  Color get backgroundColor => rx.backgroundColor.value;
  set backgroundColor(Color c) => rx.backgroundColor.value = c;
}
