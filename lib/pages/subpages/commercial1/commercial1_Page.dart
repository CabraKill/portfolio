import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/project_Page.dart';
import 'package:portfolio/pages/subpages/commercial1/commercial1_Page1.dart';
import 'package:portfolio/pages/subpages/commercial1/commercial1_Page2.dart';
import 'package:portfolio/pages/subpages/commercial1/commercial1_Page3.dart';
import 'package:portfolio/pages/subpages/commercial1/commercial1_Page4.dart';

class Commercial1Page extends StatelessWidget {
  const Commercial1Page({Key key}) : super(key: key);

  static Color color = Colors.blue;
  static const String title =
      "Gerenciamento de clientes\nExperiência comercial";

  @override
  Widget build(BuildContext context) {
    return ProjectPage(children: [
      Commercial1Page1(),
      Commercial1Page2(),
      Commercial1Page3(),
      Commercial1Page4(),
    ]);
  }
}
