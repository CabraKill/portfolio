import 'package:flutter/material.dart';

class Commercial1Page1 extends StatelessWidget {
  Commercial1Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(35),
          child: Image.asset("assets/commercial1/blocked.jpg")),
    );
  }
}
