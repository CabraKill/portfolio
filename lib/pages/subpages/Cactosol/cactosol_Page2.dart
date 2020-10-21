import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';
import 'package:portfolio/global_Widgets/palleteColors_Widget.dart';

class CactosolPage2 extends StatelessWidget {
  const CactosolPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: LegendWidget.byKeys(
              keys: ["I", "?", "T"],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MyChip.info(
                    text:
                        "Cactosol é um projeto pessoal e nas palavras do próprio aplicativo: \"um doce lembrete em forma de app\". Possui funcões pra relembrar momentos, bodas de namoro e mais."),
                MyChip.why(
                  text:
                      "Já sentiu vontade de salvar um momento ou dia por quê ele merecia ser vivido e revivido não apenas no presente? Nada existinte parecia fazer juízo para solucionar essa vontade que aparece em várias formas.",
                ),
                MyChip.tecnology(text: "Flutter"),
                MyChip.tecnology(text: "Flare"),
                MyChip.tecnology(text: "Mobx migrado para Get"),
                MyChip.tecnology(text: "GetStorage"),
                MyChip.tecnology(text: "Firebase"),
                MyChip.tecnology(text: "Google Maps"),
                MyChip.tecnology(text: "Permission Handler"),
                MyChip.tecnology(text: "Sensors"),
                MyChip.tecnology(text: "TorchCompat"),
                MyChip.tecnology(text: "FlutterCompass"),
                MyChip(
                    child: PalleteColors(
                  colors: [
                    Color.fromRGBO(36, 252, 255, 1),
                    Color.fromRGBO(105, 240, 174, 1),
                    Color.fromRGBO(156, 39, 176, 1),
                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                  textFont: "Alice-Regular",
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
