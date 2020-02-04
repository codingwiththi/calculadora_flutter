import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:project_scorpio/app/modules/calculator/calculator_page.dart';

main() {
  testWidgets('CalculatorPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(CalculatorPage(title: 'Calculator')));
    final titleFinder = find.text('Calculator');
    expect(titleFinder, findsOneWidget);
  });
}
