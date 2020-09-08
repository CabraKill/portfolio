import 'package:flutter/material.dart';

class PalleteColors extends StatelessWidget {
  final List<Color> colors;
  const PalleteColors({@required this.colors, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: colors.map((e) {
        List<String> hexColor = [
          e.red.toRadixString(16),
          e.green.toRadixString(16),
          e.blue.toRadixString(16)
        ];
        for (var i = 0; i < hexColor.length; i++) {
          hexColor[i] =
              hexColor[i].length > 1 ? hexColor[i] : "0" + hexColor[i];
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
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 5)
                  ]),
            ),
            SizedBox(
              width: 15,
            ),
            Text("ff${hexColor[0]}${hexColor[1]}${hexColor[2]}")
          ],
        );
      }).toList(),
    );
  }
}
