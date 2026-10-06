import 'package:flutter/material.dart';
import 'package:slicing_ui/core/constants/app_colors.dart';
import 'package:slicing_ui/core/constants/app_sizes.dart';
import 'package:slicing_ui/core/constants/app_text_styles.dart';
import 'package:slicing_ui/core/widgets/app_button.dart';
import 'package:slicing_ui/core/widgets/app_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slicing UI'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset Counter',
            onPressed: _counter > 0 ? _resetCounter : null,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(AppSizes.p8),
                          decoration: BoxDecoration(
                            color: colorScheme.primary.withAlpha(25),
                            borderRadius: AppSizes.radiusSm,
                          ),
                          child: Icon(
                            Icons.layers_outlined,
                            color: colorScheme.primary,
                            size: AppSizes.iconMd,
                          ),
                        ),
                        AppSizes.hGap12,
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Modular UI Architecture',
                                style: AppTextStyles.title,
                              ),
                              AppSizes.vGap4,
                              Text(
                                'Feature-first & clean folder structure',
                                style: AppTextStyles.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSizes.vGap16,
                    const Text(
                      'Ready for scalable UI slicing, design system tokens, reusable widgets, and state management.',
                      style: AppTextStyles.bodyMedium,
                    ),
                  ],
                ),
              ),
              AppSizes.vGap20,
              AppCard(
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Interactive Counter Component',
                      style: AppTextStyles.subtitle,
                    ),
                    AppSizes.vGap12,
                    Text(
                      '$_counter',
                      style: AppTextStyles.h1.copyWith(
                        color: colorScheme.primary,
                      ),
                    ),
                    AppSizes.vGap16,
                    AppButton(
                      text: 'Increment Counter',
                      icon: const Icon(Icons.add, size: AppSizes.iconSm),
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
              ),
              AppSizes.vGap20,
              const Text(
                'Folder Structure Overview',
                style: AppTextStyles.title,
              ),
              AppSizes.vGap12,
              const _StructureItem(
                path: 'lib/app/',
                description: 'App root, routing, global configurations',
              ),
              AppSizes.vGap8,
              const _StructureItem(
                path: 'lib/core/',
                description: 'Constants, themes, shared widgets, extensions',
              ),
              AppSizes.vGap8,
              const _StructureItem(
                path: 'lib/features/',
                description: 'Feature modules (presentation, domain, data)',
              ),
              AppSizes.vGap8,
              const _StructureItem(
                path: 'assets/',
                description: 'Icons, images, vectors, and fonts',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StructureItem extends StatelessWidget {
  const _StructureItem({required this.path, required this.description});

  final String path;
  final String description;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p12,
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.folder_outlined,
            size: AppSizes.iconMd,
            color: AppColors.primary,
          ),
          AppSizes.hGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  path,
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(description, style: AppTextStyles.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
