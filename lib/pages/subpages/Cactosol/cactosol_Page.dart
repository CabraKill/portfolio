import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/project_Page.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page1.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page2.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page3.dart';
import 'package:portfolio/pages/subpages/Cactosol/cactosol_Page4.dart';

class CactosolPage extends StatelessWidget {
  const CactosolPage({Key key}) : super(key: key);

  static final Color color = Colors.green[300];
  static const String title = "Cactosol";

  @override
  Widget build(BuildContext context) {
    return ProjectPage(children: [
      CactosolPage1(),
      CactosolPage2(),
      CactosolPage3(),
      CactosolPage4(),
    ]);
  }
}
