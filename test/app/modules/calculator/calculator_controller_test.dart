import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_module.dart';

void main() {
  initModule(CalculatorModule());
  CalculatorController calculator;

  setUp(() {
    calculator = CalculatorModule.to.get<CalculatorController>();
  });

  group('CalculatorController Test', () {
    test("First Test", () {
      expect(calculator, isInstanceOf<CalculatorController>());
    });

    test("Set Value", () {
      expect(calculator.value, equals(0));
      calculator.increment();
      expect(calculator.value, equals(1));
    });
  });
}
