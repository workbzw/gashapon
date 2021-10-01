// 抽奖机器
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*抽奖机下部分*/
class MachineBottomWidget extends StatefulWidget {
  @override
  _MachineBottomWidgetState createState() => _MachineBottomWidgetState();
}

class _MachineBottomWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x00000000),

          image: DecorationImage(image: AssetImage("images/gashapon_machine.png"),fit: BoxFit.fitHeight)),
    );
  }
}
