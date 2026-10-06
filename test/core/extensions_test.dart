import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ui/core/extensions/context_extensions.dart';

void main() {
  testWidgets('BuildContextExtensions provide context values', (
    WidgetTester tester,
  ) async {
    late BuildContext testContext;

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.light(),
        home: Builder(
          builder: (BuildContext context) {
            testContext = context;
            return const SizedBox();
          },
        ),
      ),
    );

    expect(testContext.theme, isNotNull);
    expect(testContext.colorScheme, isNotNull);
    expect(testContext.textTheme, isNotNull);
    expect(testContext.isDarkMode, isFalse);
    expect(testContext.mediaQuery, isNotNull);
    expect(testContext.screenSize.width, greaterThan(0));
    expect(testContext.screenWidth, greaterThan(0));
    expect(testContext.screenHeight, greaterThan(0));
  });
}
