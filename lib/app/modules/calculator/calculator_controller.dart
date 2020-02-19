import 'package:expressions/expressions.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:project_scorpio/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:rxdart/rxdart.dart';

part 'calculator_controller.g.dart';

class CalculatorController = _CalculatorBase with _$CalculatorController;

abstract class _CalculatorBase with Store {
  final ILocalStorage _storage = Modular.get();
  @observable
  String cacheText = "";

  @observable
  String senha;

  @observable
  bool isResolved = false;

  final _typeExpression$ = BehaviorSubject<String>();
  @computed
  Sink<String> get typeExpressionIn => _typeExpression$.sink;
  @computed
  Stream<String> get typeExpressionOut => _typeExpression$.stream
      .map(mapNotSymbolLess)
      .map(mapACTap)
      .map(mapExpression);

  @action
  String mapNotSymbolLess(String value) {
    if ((cacheText.isEmpty ||
            (cacheText.length == 1 && !isNumeric(cacheText))) &&
        (value == "+" || value == "*" || value == "/" || value == "%")) {
      return "";
    } else {
      return value;
    }
  }

  @action
  String mapACTap(String value) {
    if (value == "AC") {
      cacheText = "";
      return "";
    }
    return value;
  }

  @action
  String mapExpression(String value) {
    if (value.isEmpty) {
      return "";
    }

    if (value == "%") {
      cacheText = result("$cacheText*0.01");
      return cacheText;
    }

    if (value == "=") {
      cacheText = result(cacheText);
      isResolved = true;
      return cacheText;
    }
    if (cacheText.length > 0 &&
        !isNumeric(value) &&
        !isNumeric(cacheText[cacheText.length - 1])) {
      cacheText = cacheText.substring(0, cacheText.length - 1);
    }

    if (isResolved && isNumeric(value)) {
      cacheText = value;
    } else {
      cacheText = "$cacheText$value";
    }
    isResolved = false;
    return cacheText;
  }

  @action
  String result(String expressionText) {
    try {
      Expression expression = Expression.parse(expressionText);
      final evaluator = const ExpressionEvaluator();
      var r = evaluator.eval(expression, null);
      return r.toString().contains(".0")
          ? r.toString().replaceFirst(".0", "")
          : r.toString();
    } catch (e) {
      return expressionText;
    }
  }

  @action
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  _HomeBase() {
    init();
  }

  @action
  init() async {
    String stringLocal = await _storage.get('senha');
    if (stringLocal == null) {
      senha = '';
    } else {
      senha = stringLocal;
    }
  }

  @action
  void save() {
    _storage.put('senha', cacheText);
  }

  @action
  void remove() {
    _storage.delete('senha');
  }
}
