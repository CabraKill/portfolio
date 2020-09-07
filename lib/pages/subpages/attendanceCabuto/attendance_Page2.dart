import 'package:flutter/material.dart';
import 'package:portfolio/global_Widgets/legend_Widget.dart';
import 'package:portfolio/global_Widgets/myChip_Widget.dart';

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
                MyChip(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: Text('?'),
                  ),
                  text:
                      "Tornou-se necessário automatizar o processo de listas de chegada e saída na equipe. Além de tedioso e lento, ainda era necessário repassar a lista assinada para o computador.",
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: Text('?'),
                  ),
                  label: Text('Lafayette'),
                ),
                Chip(
                  label: Text("oi"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
