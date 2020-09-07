import 'package:flutter/cupertino.dart';

class ProjectPage extends StatelessWidget {
  final List<Widget> children;
  const ProjectPage({@required this.children, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth > 900 ? 400 : constraints.maxWidth;
        return Center(
          child: ListView(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: children.map<Widget>(
                (child) => SizedBox(width: width, child: child),
              ).toList()),
        );
      },
    );
  }
}
