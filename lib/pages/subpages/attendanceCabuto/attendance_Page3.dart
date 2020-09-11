import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';

class AttendancePage3 extends StatelessWidget {
  const AttendancePage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget.byKeys(keys: ["R"]),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip.meaning(
                    text:
                        "Esta tela teve o objetivo de incentivar visualmente e comodamente o cumprimento do ponto"),
                MyChip.meaning(
                    text:
                        "Não só últil, mas também era era necessário que ela representasse o meio que seria utilizado, como por exemplo as cores da equipe e o que era de melhor feito."),
                MyChip.meaning(
                    text:
                        "O processo de \"preenchimento\" de lista pôde ser agilizado pelas informações ja serem coletadas automaticamente com o resto do aplicativo."),
                MyChip.tecnology(text: "Flutter"),
                MyChip.tecnology(text: "Flare"),
                MyChip.when(text: "14/10/2019"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
