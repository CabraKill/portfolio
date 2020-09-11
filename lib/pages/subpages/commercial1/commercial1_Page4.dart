import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';

class Commercial1Page4 extends StatelessWidget {
  Commercial1Page4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget.byKeys(
              keys: ["R", "T", "Q"],
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
                      child: Image.asset("assets/commercial1/clients.jpg")),
                ),
                MyChip.meaning(
                    text:
                        "Outra preocupação importante ao app era poder conferir os dados dos clientes, como nome e telefone, além da função de realizar chamadas direto do app para contatá-los."),
                MyChip.tecnology(text: "Flutter"),
                MyChip.tecnology(text: "BLoc"),
                MyChip.tecnology(text: "Shared Preferences"),
                MyChip.tecnology(text: "FTP"),
                MyChip.tecnology(text: "Custom plataform-specific code"),
                MyChip.when(text: "29/11/2019")
              ],
            ),
          )
        ],
      ),
    );
  }
}
