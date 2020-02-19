// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculatorController on _CalculatorBase, Store {
  Computed<Sink<String>> _$typeExpressionInComputed;

  @override
  Sink<String> get typeExpressionIn => (_$typeExpressionInComputed ??=
          Computed<Sink<String>>(() => super.typeExpressionIn))
      .value;
  Computed<Stream<String>> _$typeExpressionOutComputed;

  @override
  Stream<String> get typeExpressionOut => (_$typeExpressionOutComputed ??=
          Computed<Stream<String>>(() => super.typeExpressionOut))
      .value;

  final _$cacheTextAtom = Atom(name: '_CalculatorBase.cacheText');

  @override
  String get cacheText {
    _$cacheTextAtom.context.enforceReadPolicy(_$cacheTextAtom);
    _$cacheTextAtom.reportObserved();
    return super.cacheText;
  }

  @override
  set cacheText(String value) {
    _$cacheTextAtom.context.conditionallyRunInAction(() {
      super.cacheText = value;
      _$cacheTextAtom.reportChanged();
    }, _$cacheTextAtom, name: '${_$cacheTextAtom.name}_set');
  }

  final _$isResolvedAtom = Atom(name: '_CalculatorBase.isResolved');

  @override
  bool get isResolved {
    _$isResolvedAtom.context.enforceReadPolicy(_$isResolvedAtom);
    _$isResolvedAtom.reportObserved();
    return super.isResolved;
  }

  @override
  set isResolved(bool value) {
    _$isResolvedAtom.context.conditionallyRunInAction(() {
      super.isResolved = value;
      _$isResolvedAtom.reportChanged();
    }, _$isResolvedAtom, name: '${_$isResolvedAtom.name}_set');
  }

  final _$_CalculatorBaseActionController =
      ActionController(name: '_CalculatorBase');

  @override
  String mapNotSymbolLess(String value) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction();
    try {
      return super.mapNotSymbolLess(value);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String mapACTap(String value) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction();
    try {
      return super.mapACTap(value);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String mapExpression(String value) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction();
    try {
      return super.mapExpression(value);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String result(String expressionText) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction();
    try {
      return super.result(expressionText);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isNumeric(String s) {
    final _$actionInfo = _$_CalculatorBaseActionController.startAction();
    try {
      return super.isNumeric(s);
    } finally {
      _$_CalculatorBaseActionController.endAction(_$actionInfo);
    }
  }
}
