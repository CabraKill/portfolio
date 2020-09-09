import 'package:flutter/material.dart';

class PalleteColors extends StatelessWidget {
  final List<Color> colors;
  final String textFont;
  const PalleteColors({@required this.colors, this.textFont, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = colors.map<Widget>((e) {
      List<String> hexColor = [
        e.red.toRadixString(16),
        e.green.toRadixString(16),
        e.blue.toRadixString(16)
      ];
      for (var i = 0; i < hexColor.length; i++) {
        hexColor[i] = hexColor[i].length > 1 ? hexColor[i] : "0" + hexColor[i];
      }
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: e,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(2, 2), blurRadius: 5)
                ]),
          ),
          SizedBox(
            width: 15,
          ),
          Text("ff${hexColor[0]}${hexColor[1]}${hexColor[2]}")
        ],
      );
    }).toList();

    if (textFont != null)
      children.add(Chip(
        label: Text("Fonte: $textFont"),
        backgroundColor: Colors.white.withOpacity(0.7),
      ));
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      //crossAxisAlignment: WrapCrossAlignment.center,
      children: children,
    );
  }
}
