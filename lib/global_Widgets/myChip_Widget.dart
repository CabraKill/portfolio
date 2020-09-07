import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  final Widget leading;
  final String text;
  const MyChip({@required this.leading, @required this.text, key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          //color: Colors.grey.withAlpha(80),
          color: Colors.red.withAlpha(80),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(height: 20, child: leading)),
          Text(
            text,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
