import 'package:flutter/material.dart';

class ImageLoading extends StatelessWidget {
  final String asset;
  ImageLoading({@required this.asset});
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [CircularProgressIndicator(), Image.asset(asset)],
    );
  }
}
