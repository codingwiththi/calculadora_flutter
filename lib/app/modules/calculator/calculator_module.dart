import 'package:project_scorpio/app/modules/calculator/calculator_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_scorpio/app/modules/calculator/calculator_page.dart';
import 'package:project_scorpio/app/modules/calculator/services/button_text_service.dart';

class CalculatorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CalculatorController()),
        Bind((i) => ButtonTextService()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CalculatorPage()),
      ];

  static Inject get to => Inject<CalculatorModule>.of();
}
