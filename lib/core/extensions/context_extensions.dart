import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  // Theme shortcuts
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Brightness check
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // MediaQuery shortcuts
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
  EdgeInsets get screenPadding => MediaQuery.paddingOf(this);
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  // Navigation shortcuts
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop<T>(result);

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) => Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) => Navigator.of(this).pushReplacementNamed<T, TO>(
    routeName,
    result: result,
    arguments: arguments,
  );
}
