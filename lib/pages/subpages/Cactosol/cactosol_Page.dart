import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class CactosolController extends GetxController {
  VideoPlayerController videoController;
  Future<void> initializeVideoPlayerFuture;
  RxDouble width = 265.0.obs;

  @override
  void onInit() {
    videoController = VideoPlayerController.asset("assets/cactosol.mp4");
    initializeVideoPlayerFuture = videoController.initialize();
    super.onInit();
  }
}

class CactosolPage extends StatelessWidget {
  CactosolPage({Key key}) : super(key: key);

  static const Color color = Colors.green;
  static const String title = "Cactosol";

  final controller = Get.put(CactosolController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.transparent, //Colors.blue,
            width: 295,
            height: 500,
          ),
          Image.asset(
            "assets/frame.png",
            alignment: Alignment.center,
            width: 249,
            height: 612,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: FutureBuilder(
                future: controller.initializeVideoPlayerFuture,
                builder: (context, snap) {
                  if (snap.connectionState != ConnectionState.done)
                    return Center(child: CircularProgressIndicator());
                  controller.videoController.play();
                  controller.videoController.setLooping(true);
                  controller.width.value =
                      controller.videoController.value.size.width;
                  print("played");
                  return AspectRatio(
                    aspectRatio: controller.videoController.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(controller.videoController),
                  );
                }),
          ),
          

          // Obx(() => Container(
          //       alignment: Alignment.center,
          //       height: 615,
          //       child: AspectRatio(
          //         aspectRatio:
          //             controller.videoController.value.aspectRatio ?? 1,
          //         child: Image.asset(
          //           "assets/frame.png",
          //           alignment: Alignment.center,
          //           width: controller.width.value, //295,
          //           //height: double.infinity,
          //           fit: BoxFit.fill,
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
