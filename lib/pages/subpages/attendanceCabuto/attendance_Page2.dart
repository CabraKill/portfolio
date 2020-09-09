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
            child: LegendWidget.byKeys(keys: ["I","?"]),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip.info(
                    text:
                        "As telas, consecutivamente, representam fora de expediente, livre para entrar e por fim trabalhando-relatório final."),
                MyChip.why(
                  text:
                      "O horário de chegada e saída na equipe de aerodesign era feito por lista impressa, além de ser tedioso e lento. Por fim ainda era necessário repassar a lista assinada para o computador.",
                ),
                MyChip(
                  child: PalleteColors(colors: [
                    Color.fromRGBO(2, 61, 143, 1),
                    Color.fromRGBO(3, 135, 235, 1),
                    Color.fromRGBO(33, 150, 243, 1),
                    Color.fromRGBO(255, 255, 255, 1),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
