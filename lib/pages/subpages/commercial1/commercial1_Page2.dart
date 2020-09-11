import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';
import 'package:portfolio/global_Widgets/palleteColors_Widget.dart';

class Commercial1Page2 extends StatelessWidget {
  Commercial1Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: const LegendWidget.byKeys(
              keys: ["I", "?"],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                const MyChip.info(
                    text:
                        "Este app foi requisito para uso interno dos funcionários de uma empresa de informática que queria facilitar a gerência dos seus clientes. Era necessário que o app fosse implementado sem haver mudanças no funcionamento do sistema, com a facildiade de um \"plug and play\"."),
                const MyChip.why(
                  text:
                      "Toda operação de verificação, liberação e bloqueagem de clientes, por mais que fosse salva em um servidor FTP online, era feita apenas por um computador com o sistema implementado.",
                ),
                const MyChip.why(
                    text:
                        "Quando um cliente realizava a regulação do pagamento era necessário \"correr\" para este comptudator para liberar o uso do sistema."),
                MyChip.singleChild(
                  child: LimitedBox(
                      maxHeight: 150,
                      child: Image.asset("assets/commercial1/server.png")),
                ),
                MyChip(
                    child: PalleteColors(
                  colors: [
                    Color.fromRGBO(33, 150, 243, 1),
                    Color.fromRGBO(112, 200, 246, 1),
                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
