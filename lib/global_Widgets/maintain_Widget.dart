import 'package:flutter/material.dart';

class MaintainWidget extends StatefulWidget {
  final Widget child;
  MaintainWidget({@required this.child, Key key}) : super(key: key);

  @override
  _MaintainWidgetState createState() => _MaintainWidgetState();
}

class _MaintainWidgetState extends State<MaintainWidget>
    with AutomaticKeepAliveClientMixin<MaintainWidget> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
