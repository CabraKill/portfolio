import 'package:flutter/material.dart';

class LegendWidget extends StatelessWidget {
  final int start;
  final int end;
  final List<String> keys;
  const LegendWidget({this.start = 0, this.end = 5, this.keys, Key key})
      : super(key: key);

  const LegendWidget.sub({@required this.start, @required this.end, this.keys});
  const LegendWidget.byKeys({@required this.keys, this.start, this.end});

  static final legends = <String, Widget>{
    "I": _legenda("I", "Info", Colors.grey.shade800),
    "?": _legenda("?", "Por que?", Colors.blue.shade800),
    "R": _legenda("R", "Resultados", Colors.red.shade800),
    "Q": _legenda("Q", "Quando?", Colors.purple.shade800),
    "T": _legenda("T", "Tecnologias", Colors.cyan.shade800),
  };
  @override
  Widget build(BuildContext context) {
    List<Widget> children;
    if (keys == null)
      children = legends.values.toList().sublist(start, end);
    else {
      children = List();
      for (var k in keys) {
        children.add(legends[k]);
      }
    }

    return Wrap(spacing: 10, runSpacing: 10, children: children);
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
