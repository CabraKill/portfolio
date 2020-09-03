import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/LegendWidget/legend_Widget.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key key}) : super(key: key);

  static const Color color = Colors.blue;
  static const String title = "Ponto eletrônico Cabuto";

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Center(child: Text("oi")),
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: LegendWidget(),
            ),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Chip(
                    label: Text("oi"),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: Text('?'),
                    ),
                    label: Text('Lafayette'),
                  ),
                  Chip(
                    label: Text("oi"),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
