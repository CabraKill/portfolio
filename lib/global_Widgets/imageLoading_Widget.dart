import 'package:flutter/material.dart';

class ImageLoading extends StatelessWidget {
  final String asset;
  ImageLoading({@required this.asset});

  @override
  Widget build(BuildContext context) {
    return Image.asset(asset);
    //better performance
    // return Stack(
    //   alignment: Alignment.center,
    //   children: [const CircularProgressIndicator(), Image.asset(asset)],
    // );
  }
}
