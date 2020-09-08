import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_Controller.dart';
import 'package:portfolio/theme/animation_Duration.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedSwitcher(
          duration: AnimationDuration.transitionDuration3,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: Card(
            color: Colors.cyan,
              key: ValueKey(HomeController.to.currentPageTitle),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(HomeController.to.currentPageTitle,textAlign: TextAlign.center,))),
        ));
  }
}
