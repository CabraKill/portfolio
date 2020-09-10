import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class CactosolController extends GetxController {
  VideoPlayerController videoController;
  Future<void> initializeVideoPlayerFuture;

  @override
  void onInit() {
    videoController = VideoPlayerController.asset("assets/cactosol.mp4");
    initializeVideoPlayerFuture = videoController.initialize();
    super.onInit();
  }

  @override
  Future<void> onClose() {
    videoController.dispose();
    return super.onClose();
  }
}

class CactosolPage1 extends StatelessWidget {
  CactosolPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(35),
      child: Image.asset("assets/cactosol/cactosol.gif"),
    ));
  }
}
