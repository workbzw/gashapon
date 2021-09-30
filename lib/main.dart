import 'package:flutter/material.dart';

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
  AppHomePage({Key? key}) : super(key: key);

  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          /*等分*/
          Expanded(
            /*权重为1*/
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            /*权重为1*/
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            /*权重为1*/
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
