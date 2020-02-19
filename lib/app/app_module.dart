import 'package:project_scorpio/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:project_scorpio/app/app_widget.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_module.dart';
import 'package:project_scorpio/app/shared/repositories/localstorage/local_storage_hive.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => LocalStorageHive()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: CalculatorModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
