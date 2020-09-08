import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';
import 'package:portfolio/global_Widgets/palleteColors_Widget.dart';

class AttendancePage2 extends StatelessWidget {
  const AttendancePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget(),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip.why(
                  text:
                      "O horário de chegada e saída na equipe de aerodesign era feito por lista impressa, além de ser tedioso e lento. Por fim ainda era necessário repassar a lista assinada para o computador.",
                ),
                MyChip.when(text: "14/10/2019"),
                MyChip.tecnology(text: "Flutter"),
                MyChip.tecnology(text: "Flare"),
                MyChip.meaning(
                    text:
                        "Esta tela teve o objetivo de incentivar visualmente e comodamente o cumprimento de ponto"),
                MyChip.meaning(
                    text:
                        "Não só últil, mas também era era necessário que ela representasse o meio que seria utilizado, como por exemplo as cores da equipe e o que era de melhor feito."),
                MyChip.meaning(
                    text:
                        "O processo de \"preenchimento\" de lista pôde ser agilizado pelas informações ja serem coletadas automaticamente com o resto do aplicativo."),
                MyChip.info(
                    text:
                        "As telas, consecutivamente, representam fora de expediente, livre para entrar e por fim trabalhando-relatório final."),
                PalleteColors(colors: [
                  Color.fromRGBO(2, 61, 143, 1),
                  Color.fromRGBO(3, 135, 235, 1),
                  Color.fromRGBO(33, 150, 243, 1),
                  Color.fromRGBO(255, 255, 255, 1),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
