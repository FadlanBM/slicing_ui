import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ui/app/routes/app_router.dart';
import 'package:slicing_ui/app/routes/app_routes.dart';

void main() {
  group('AppRouter Tests', () {
    test('routes to HomePage for initial and home route', () {
      final Route<dynamic> initialRoute = AppRouter.onGenerateRoute(
        const RouteSettings(name: AppRoutes.initial),
      );
      expect(initialRoute, isA<MaterialPageRoute<dynamic>>());

      final Route<dynamic> homeRoute = AppRouter.onGenerateRoute(
        const RouteSettings(name: AppRoutes.home),
      );
      expect(homeRoute, isA<MaterialPageRoute<dynamic>>());
    });

    testWidgets('unknown route shows Not Found page', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: '/non-existent-route',
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Not Found'), findsOneWidget);
      expect(
        find.text('No route defined for /non-existent-route'),
        findsOneWidget,
      );
    });
  });
}
