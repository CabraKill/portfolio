import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class _Controller extends GetxController {
  VideoPlayerController videoController;
  Future<void> initializeVideoPlayerFuture;
  final String videoAsset;
  _Controller({@required this.videoAsset});

  @override
  void onInit() {
    videoController = VideoPlayerController.asset(videoAsset);
    initializeVideoPlayerFuture = videoController.initialize();
    super.onInit();
  }

  @override
  Future<void> onClose() {
    videoController.dispose();
    return super.onClose();
  }
}

class VideoLoop extends StatelessWidget {
  final String videoAsset;
  VideoLoop({@required this.videoAsset, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<_Controller>(
        init: _Controller(videoAsset: videoAsset),
        tag: videoAsset,

        builder: (controller) => FutureBuilder(
            future: controller.initializeVideoPlayerFuture,
            builder: (context, snap) {
              if (snap.connectionState != ConnectionState.done)
                return Center(child: CircularProgressIndicator());
              controller.videoController.play();
              controller.videoController.setLooping(true);
              print("played: $videoAsset");
              return AspectRatio(
                aspectRatio: controller.videoController.value.aspectRatio,
                child: VideoPlayer(controller.videoController),
              );
            }));
  }
}
