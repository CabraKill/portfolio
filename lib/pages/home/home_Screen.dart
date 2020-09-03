import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_Controller.dart';
import 'package:portfolio/pages/home/widgets/statusPageWidget/statusPage_Widget.dart';
import 'package:portfolio/pages/home/widgets/title_Widget.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page.dart';
import 'package:portfolio/pages/subpages/Info/info_Page.dart';
import 'package:portfolio/pages/subpages/attendanceCabuto/attendance_Page.dart';
import 'package:portfolio/theme/animation_Duration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(children: [
            AnimatedContainer(
              duration: AnimationDuration.transitionDuration,
              color: HomeController.to.backgroundColor,
              child: PageView(
                children: [AttendancePage(), CactosolPage(), InfoPage()],
                scrollDirection: Axis.vertical,
                onPageChanged: HomeController.to.updateCurrentPage,
                controller: HomeController.to.pageController,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: StatusPageWidget(),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TitleWidget(),
                )),
          ])),
    );
  }
}
