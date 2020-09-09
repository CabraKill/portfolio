import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';
import 'package:portfolio/global_Widgets/videoLoop_Widget.dart';

class CactosolPage3 extends StatelessWidget {
  const CactosolPage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget.byKeys(
              keys: ["R"],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip(
                  child: Image.asset("assets/database.PNG"),
                ),
                MyChip.meaning(
                    text:
                        "A sincronização de dados do Firebase permite não só o salvamento em nuvem, mas a visualização instatânea das modificações ou adições que alguém acabou de fazer."),
                MyChip(
                  child: Image.asset(
                    "assets/mapsNotification.gif",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
