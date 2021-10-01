import 'package:flutter/material.dart';

import 'gashapon/machine/machine_bottom.dart';
import 'gashapon/machine/machine_mid.dart';
import 'gashapon/machine/machine_top.dart';
import 'widgets/dimensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      home: AppHomePage(),
    );
    return materialApp;
  }
}

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  final double btnSize = Dimensions.btnSizeNormal;
  final double marginTop = Dimensions.marginNormal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  /*设置本地背景图*/
                  image: AssetImage("images/ges_bg.png"),
                  /*图片填充模式*/
                  fit: BoxFit.fill)),
          /*Column为纵向布局，Row为横向布局*/
          child: Column(
            children: <Widget>[
              Expanded(
                /*权重为1*/
                flex: 1,
                child: Container(
                  color: Color(0x5598FF99),
                  /*扭蛋机上布局*/
                  child: MachineTopWidget(),
                ),
              ),
              Expanded(
                /*权重为1*/
                flex: 1,
                child: Container(
                  color: Color(0x559899FF),
                  /*扭蛋机中布局*/
                  child: MachineMidWidget(),
                ),
              ),
              Expanded(
                /*权重为1*/
                flex: 1,
                child: Container(
                  color: Color(0x55FF9899),
                  /*扭蛋机下布局*/
                  child: MachineBottomWidget(),
                ),
              ),
            ],
          ),
        ),
        Align(
          /*右侧4个按钮*/
          alignment: Alignment.topRight,
          child: Container(
            margin:
                EdgeInsetsDirectional.only(top: marginTop * 4, end: marginTop),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: marginTop),
                  width: btnSize,
                  height: btnSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/prize.png"),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => _btn1Click(),
                    child: Text(""),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: marginTop),
                  width: btnSize,
                  height: btnSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/ssq.png"),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => _btn2Click(),
                    child: Text(""),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: marginTop),
                  width: btnSize,
                  height: btnSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/coin.png"), fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => _btn3Click(),
                    child: Text(""),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: marginTop),
                  width: btnSize,
                  height: btnSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/task.png"),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => _btn4Click(),
                    child: Text(""),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    )));
  }

  void _btn1Click() {}

  void _btn2Click() {}

  void _btn3Click() {}

  void _btn4Click() {}
}
