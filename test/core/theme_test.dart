import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_ui/core/constants/app_colors.dart';
import 'package:slicing_ui/core/theme/app_theme.dart';

void main() {
  group('AppTheme Tests', () {
    test('lightTheme has expected properties', () {
      final ThemeData theme = AppTheme.lightTheme;
      expect(theme.brightness, Brightness.light);
      expect(theme.colorScheme.primary, AppColors.primary);
      expect(theme.scaffoldBackgroundColor, AppColors.backgroundLight);
    });

    test('darkTheme has expected properties', () {
      final ThemeData theme = AppTheme.darkTheme;
      expect(theme.brightness, Brightness.dark);
      expect(theme.colorScheme.primary, AppColors.primaryLight);
      expect(theme.scaffoldBackgroundColor, AppColors.backgroundDark);
    });
  });
}
