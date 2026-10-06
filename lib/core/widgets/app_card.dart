import 'package:flutter/material.dart';
import 'package:slicing_ui/core/constants/app_sizes.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSizes.p16),
    this.margin,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final Widget content = Padding(padding: padding, child: child);

    return Card(
      margin: margin ?? EdgeInsets.zero,
      child: onTap != null
          ? InkWell(
              onTap: onTap,
              borderRadius: AppSizes.radiusMd,
              child: content,
            )
          : content,
    );
  }
}
