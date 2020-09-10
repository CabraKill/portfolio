import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/subpages/intro/categories_Widget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key key}) : super(key: key);

  static Color color = Colors.grey[100];
  static const String title = "Bem vindo.";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.cyan, width: 2)),
        padding: EdgeInsets.all(6),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: const TextTile.title1(
                  text:
                      "Pegue um café, alguns biscoitos e aproveite a viagem."),
            ),
            Align(
              alignment: Alignment(0, 0.2),
              child: Categories(children: [
                const Text("Ponto eletrônico Cabuto"),
                const Text("Cactosol")
              ]),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextTile.title2(
                      text:
                          "Caso esteja no celular, deslize horizontalmente e verticalmente para descobrir os projetos."),
                  SizedBox(
                    height: 10,
                  ),
                  const TextTile.title2(
                      text:
                          "Esta página está em constante atualização. Aproveite."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign textAlign;
  const TextTile(
      {@required this.text, @required this.size, @required this.textAlign});

  const TextTile.title1(
      {@required this.text, this.size: 30, this.textAlign: TextAlign.center});

  const TextTile.title2(
      {@required this.text, this.size: 14, this.textAlign: TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: size, color: Colors.cyan),
        textAlign: textAlign);
  }
}
