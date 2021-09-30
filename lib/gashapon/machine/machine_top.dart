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
          image: DecorationImage(image: AssetImage("images/ges_bg.png"),fit: BoxFit.scaleDown)),
    );
  }
}
