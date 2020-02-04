import 'package:mobx/mobx.dart';

part 'calculator_controller.g.dart';

class CalculatorController = _CalculatorBase with _$CalculatorController;

abstract class _CalculatorBase with Store {
  @observable
  int value = 1;

  @action
  void increment() {
    value++;
  }
}
