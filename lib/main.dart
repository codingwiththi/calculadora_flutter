import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_scorpio/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<CalculatorController>(CalculatorController());
  runApp(ModularApp(module: AppModule()));
}
