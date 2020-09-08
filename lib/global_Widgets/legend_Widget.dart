import 'package:flutter/material.dart';

class LegendWidget extends StatelessWidget {
  const LegendWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 10, runSpacing: 10, children: [
      _legenda("?", "Por que?", Colors.blue.shade800),
      _legenda("Q", "Quando?", Colors.purple.shade800),
      _legenda("R", "Resultados", Colors.red.shade800),
      _legenda("T", "Tecnologias", Colors.cyan.shade800),
      _legenda("I", "Info", Colors.grey.shade800),
    ]);
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
