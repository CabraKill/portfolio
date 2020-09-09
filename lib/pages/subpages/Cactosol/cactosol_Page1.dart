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

  

  //final controller = Get.put(CactosolController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(35),
        child: GetBuilder<CactosolController>(
            init: CactosolController(),
            builder: (controller) => FutureBuilder(
                future: controller.initializeVideoPlayerFuture,
                builder: (context, snap) {
                  if (snap.connectionState != ConnectionState.done)
                    return Center(child: CircularProgressIndicator());
                  controller.videoController.play();
                  controller.videoController.setLooping(true);
                  print("played");
                  return AspectRatio(
                    aspectRatio: controller.videoController.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(controller.videoController),
                  );
                })),
      ),
    );
  }
}
