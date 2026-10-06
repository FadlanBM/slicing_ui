import 'package:flutter/material.dart';
import 'package:slicing_ui/core/constants/app_colors.dart';
import 'package:slicing_ui/core/constants/app_sizes.dart';

enum AppButtonVariant { primary, secondary, outline }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.isLoading = false,
    this.icon,
    this.height = AppSizes.buttonHeight,
    this.width,
  });

  final String text;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool isLoading;
  final Widget? icon;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final Widget child = isLoading
        ? const SizedBox(
            height: 20.0,
            width: 20.0,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: Colors.white,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null) ...<Widget>[icon!, AppSizes.hGap8],
              Text(text),
            ],
          );

    final Widget button = switch (variant) {
      AppButtonVariant.primary => ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
      AppButtonVariant.secondary => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary,
          foregroundColor: Colors.white,
        ),
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
      AppButtonVariant.outline => OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        child: child,
      ),
    };

    return SizedBox(height: height, width: width, child: button);
  }
}
