import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key key}) : super(key: key);
  static const Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Quem eu sou ?",
                style: _textStyle,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 15, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/eu.jpg",
                  width: 300,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: "gitHub: "),
                  TextSpan(
                    text: 'https://github.com/CabraKill',
                    style: new TextStyle(color: Colors.blue),
                    recognizer: new TapGestureRecognizer()
                      ..onTap =
                          () => _launchURL('https://github.com/CabraKill'),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle _textStyle = TextStyle(color: Colors.cyan);

_launchURL(String link) async {
  final url = link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    Get.snackbar(
        "Erro na geração de quarks", "Não foi possível abrir a página.");
  }
}
