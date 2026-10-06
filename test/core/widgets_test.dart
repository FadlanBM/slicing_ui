import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ui/core/widgets/app_button.dart';
import 'package:slicing_ui/core/widgets/app_card.dart';
import 'package:slicing_ui/core/widgets/app_text_field.dart';

void main() {
  group('Core Widgets Tests', () {
    testWidgets('AppButton renders and handles tap and loading state', (
      WidgetTester tester,
    ) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(text: 'Click Me', onPressed: () => tapped = true),
          ),
        ),
      );

      expect(find.text('Click Me'), findsOneWidget);
      await tester.tap(find.text('Click Me'));
      expect(tapped, isTrue);

      // Loading state
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: AppButton(text: 'Loading', isLoading: true)),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('Loading'), findsNothing);
    });

    testWidgets('AppTextField renders label and hint', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppTextField(label: 'Email', hintText: 'Enter your email'),
          ),
        ),
      );

      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Enter your email'), findsOneWidget);
    });

    testWidgets('AppCard renders child and triggers onTap', (
      WidgetTester tester,
    ) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppCard(
              onTap: () => tapped = true,
              child: const Text('Card Content'),
            ),
          ),
        ),
      );

      expect(find.text('Card Content'), findsOneWidget);
      await tester.tap(find.text('Card Content'));
      expect(tapped, isTrue);
    });
  });
}
