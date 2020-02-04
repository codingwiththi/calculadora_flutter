import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_page.dart';

class CalculatorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CalculatorController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CalculatorPage()),
      ];

  static Inject get to => Inject<CalculatorModule>.of();
}
