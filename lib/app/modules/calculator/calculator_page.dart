import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  final String title;
  const CalculatorPage({Key key, this.title = "Calculator"}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("oi"),
        ],
      ),
    );
  }
}
