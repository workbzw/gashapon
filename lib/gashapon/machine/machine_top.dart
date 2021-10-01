// 抽奖机器
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*抽奖机上部分*/
class MachineTopWidget extends StatefulWidget {
  @override
  _MachineTopWidgetState createState() => _MachineTopWidgetState();
}

class _MachineTopWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x00000000),
          image: DecorationImage(image: AssetImage("images/gashapon_machine.png"),fit: BoxFit.scaleDown)),
    );
  }
}
