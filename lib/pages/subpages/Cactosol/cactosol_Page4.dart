import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';

class CactosolPage4 extends StatelessWidget {
  const CactosolPage4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget.byKeys(
              keys: ["R", "Q"],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip(
                  child: Image.asset("assets/cactosol/maps.gif",),
                ),
                MyChip.when(text: "09/05/2020")
              ],
            ),
          )
        ],
      ),
    );
  }
}
