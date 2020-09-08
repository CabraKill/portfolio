import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _RxController {
  static const animations = {0: "out", 1: "get_inside", 2: "report"};
  final RxInt currentAnimation = 0.obs;

  update() =>
      currentAnimation.value = currentAnimation.value >= animations.length - 1
          ? 0
          : currentAnimation.value + 1;
}

class AttendancePage1 extends StatelessWidget {
  AttendancePage1({Key key}) : super(key: key);

  final controller = _RxController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        //fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 295,
            height: 500,
          ),
          Image.asset(
            "assets/frame.png",
            alignment: Alignment.center,
            width: 300,
            //height: double.infinity,
            //fit: BoxFit.fitHeight,
          ),
          InkWell(
              onTap: controller.update,
              child: SizedBox(
                  width: 300,
                  child: Obx(() => FlareActor(
                        "assets/buttoncabuto.flr",
                        animation: _RxController
                            .animations[controller.currentAnimation.value],
                      )))),
        ],
      ),
    );
  }
}
