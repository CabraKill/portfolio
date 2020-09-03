import 'package:flutter/material.dart';
import 'package:portfolio/controller/home_Controller.dart';
import 'package:portfolio/theme/animation_Duration.dart';

class StatusPageWidget extends StatelessWidget {
  const StatusPageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 20,
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: AnimatedAlign(
        alignment: Alignment(
            0, verticalAlignStatusPage(HomeController.to.currentPage)),
        duration: AnimationDuration.transitionDuration2,
        child: Container(
          width: 10,
          height: 20,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white54),
        ),
      ),
    );
  }
}

double verticalAlignStatusPage(int page) {
  final lastPage = 1.0;
  return (2 / lastPage) * page - 1;
}
