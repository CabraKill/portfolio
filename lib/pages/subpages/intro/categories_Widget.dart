import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _Controller extends GetxController {
  final RxInt state = 0.obs;
  final int childrenLength;
  _Controller({@required this.childrenLength});

  @override
  void onReady() {
    Timer.periodic(Duration(milliseconds: 1500), (timer) {
      state.value = state.value == childrenLength - 1 ? 0 : state.value + 1;
      update();
    });
    super.onReady();
  }

  int get currentState => state.value;
}

class Categories extends StatelessWidget {
  final List<Widget> children;
  Categories({@required this.children});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
          child: Text("Programação"),
        ),
        GetBuilder<_Controller>(
            init: _Controller(childrenLength: children.length),
            builder: (controller) => AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  switchInCurve: Curves.ease,
                  switchOutCurve: Curves.ease,
                  child: Container(
                    alignment: Alignment.center,
                      key: ValueKey(children[controller.currentState]),
                      child: children[controller.currentState]),
                  transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                ))
      ],
    );
  }
}
