import 'package:flutter/material.dart';

import 'gashapon/machine/machine_bottom.dart';
import 'gashapon/machine/machine_mid.dart';
import 'gashapon/machine/machine_top.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
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
    ));
  }
}
