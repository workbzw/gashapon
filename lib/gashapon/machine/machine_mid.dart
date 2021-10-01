// 抽奖机器
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*抽奖机中部分*/
class MachineMidWidget extends StatefulWidget {
  @override
  _MachineMidWidgetState createState() => _MachineMidWidgetState();
}

class _MachineMidWidgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x00000000),
          image: DecorationImage(
              image: AssetImage("images/gashapon_machine.png"), fit: BoxFit.fitWidth)),
    );
  }
}
