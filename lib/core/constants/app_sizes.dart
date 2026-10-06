import 'package:flutter/material.dart';

abstract final class AppSizes {
  // Spacing & Padding
  static const double p4 = 4.0;
  static const double p8 = 8.0;
  static const double p12 = 12.0;
  static const double p16 = 16.0;
  static const double p20 = 20.0;
  static const double p24 = 24.0;
  static const double p32 = 32.0;
  static const double p40 = 40.0;
  static const double p48 = 48.0;

  // SizedBox vertical spacing
  static const SizedBox vGap4 = SizedBox(height: p4);
  static const SizedBox vGap8 = SizedBox(height: p8);
  static const SizedBox vGap12 = SizedBox(height: p12);
  static const SizedBox vGap16 = SizedBox(height: p16);
  static const SizedBox vGap20 = SizedBox(height: p20);
  static const SizedBox vGap24 = SizedBox(height: p24);
  static const SizedBox vGap32 = SizedBox(height: p32);

  // SizedBox horizontal spacing
  static const SizedBox hGap4 = SizedBox(width: p4);
  static const SizedBox hGap8 = SizedBox(width: p8);
  static const SizedBox hGap12 = SizedBox(width: p12);
  static const SizedBox hGap16 = SizedBox(width: p16);
  static const SizedBox hGap20 = SizedBox(width: p20);
  static const SizedBox hGap24 = SizedBox(width: p24);
  static const SizedBox hGap32 = SizedBox(width: p32);

  // Border Radius
  static const double r4 = 4.0;
  static const double r8 = 8.0;
  static const double r12 = 12.0;
  static const double r16 = 16.0;
  static const double r20 = 20.0;
  static const double r24 = 24.0;
  static const double rFull = 999.0;

  static const BorderRadius radiusSm = BorderRadius.all(Radius.circular(r8));
  static const BorderRadius radiusMd = BorderRadius.all(Radius.circular(r12));
  static const BorderRadius radiusLg = BorderRadius.all(Radius.circular(r16));
  static const BorderRadius radiusXl = BorderRadius.all(Radius.circular(r24));
  static const BorderRadius radiusFull = BorderRadius.all(
    Radius.circular(rFull),
  );

  // Icon Sizes
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;
  static const double iconXl = 48.0;

  // Component Heights
  static const double buttonHeight = 48.0;
  static const double inputHeight = 52.0;
  static const double appBarHeight = 56.0;
}
