import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';

class ButtonClickWidget extends StatelessWidget {
  final String text;
  final Color color;
  final controller = GetIt.I.get<CalculatorController>();
  ButtonClickWidget({Key key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.grey[900],
      child: InkWell(
        onTap: () {
          controller.typeExpressionIn.add(text);
        },
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
