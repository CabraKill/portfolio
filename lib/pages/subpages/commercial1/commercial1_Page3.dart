import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';

class Commercial1Page3 extends StatelessWidget {
  Commercial1Page3({Key key}) : super(key: key);

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
                MyChip.singleChild(
                  child: LimitedBox(
                      maxHeight: 150,
                      child: Image.asset("assets/commercial1/profile.png")),
                ),
                MyChip.meaning(
                    text:
                        "O app foi feito para uso de diversos funcionários então fez se necessário o uso registros de acesso ao servidor por meio do perfil salvo."),
                MyChip.singleChild(
                  child: LimitedBox(
                      maxHeight: 150,
                      child: Image.asset("assets/commercial1/confirm.jpg")),
                ),
                MyChip.meaning(
                    text:
                        "A confirmações das operações também é necessária para assegurar a mudanças dos dados críticos dea operação dos clientes."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
