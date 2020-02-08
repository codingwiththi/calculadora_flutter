import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get_it/get_it.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';

class MonitorWidget extends StatelessWidget {
  final controller = GetIt.I.get<CalculatorController>();

  MonitorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: StreamBuilder<String>(
        stream: controller.typeExpressionOut,
        builder: (context, snapshot) {
          print(snapshot.data);
          var text = "0";
          if (!snapshot.hasData) {
            text = "0";
          } else {
            text = snapshot.data;
          }
          return AutoSizeText(
            text,
            maxLines: 1,
            style: TextStyle(color: Colors.white, fontSize: 35),
          );
        },
      ),
    );
  }
}
