import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  final String leadingText;
  final MaterialColor leadingColor;
  final String text;
  const MyChip(
      {@required this.leadingText,
      @required this.leadingColor,
      @required this.text,
      key})
      : super(key: key);

  static const double leadingSize = 25;

  const MyChip.why(
      {this.leadingText = '?',
      this.leadingColor = Colors.blue,
      @required this.text});

  const MyChip.when(
      {this.leadingText = 'Q',
      this.leadingColor = Colors.purple,
      @required this.text});

  const MyChip.tecnology(
      {this.leadingText = 'T',
      this.leadingColor = Colors.cyan,
      @required this.text});

  const MyChip.meaning(
      {this.leadingText = 'R',
      this.leadingColor = Colors.red,
      @required this.text});

  const MyChip.info(
      {this.leadingText = 'I',
      this.leadingColor = Colors.grey,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          //color: Colors.red.withAlpha(80),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: leadingSize,
                  child: CircleAvatar(
                    backgroundColor: leadingColor.shade800,
                    child: Text(leadingText),
                  ))),
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
