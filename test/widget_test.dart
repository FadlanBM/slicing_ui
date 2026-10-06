import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ui/app/app.dart';

void main() {
  testWidgets('App smoke test and counter interaction', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // Verify initial state
    expect(find.text('Slicing UI'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap Increment Counter button
    await tester.tap(find.text('Increment Counter'));
    await tester.pumpAndSettle();

    // Verify counter incremented to 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // Tap Reset button in AppBar
    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pumpAndSettle();

    // Verify counter reset to 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
