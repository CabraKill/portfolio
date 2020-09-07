import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/project_Page.dart';
import 'package:portfolio/pages/subpages/attendanceCabuto/attendance_Page1.dart';
import 'package:portfolio/pages/subpages/attendanceCabuto/attendance_Page2.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key key}) : super(key: key);

  static Color color = Colors.blue[100];
  static const String title = "Ponto eletrônico Cabuto";

  @override
  Widget build(BuildContext context) {
    return ProjectPage(children: [
      AttendancePage1(
        width: 400,
      ),
      AttendancePage2()
    ]);
  }
}
