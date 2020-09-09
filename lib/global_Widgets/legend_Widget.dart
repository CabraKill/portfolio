import 'package:flutter/material.dart';

class LegendWidget extends StatelessWidget {
  final int start;
  final int end;
  const LegendWidget({this.start = 0, this.end = 5, Key key}) : super(key: key);

  const LegendWidget.sub({@required this.start, @required this.end});

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      _legenda("I", "Info", Colors.grey.shade800),
      _legenda("?", "Por que?", Colors.blue.shade800),
      _legenda(
          "R", "Resultados", Colors.red.shade800), //TODO: add color pallete
      _legenda("Q", "Quando?", Colors.purple.shade800),
      _legenda("T", "Tecnologias", Colors.cyan.shade800),
    ];
    return Wrap(
        spacing: 10, runSpacing: 10, children: children.sublist(start, end));
  }
}

Widget _legenda(String symbol, String text, Color color) => Row(
      key: ValueKey(symbol + text + color.toString()),
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Text(symbol),
        ),
        SizedBox(
          width: 5,
        ),
        Text(text)
      ],
    );
