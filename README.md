# slicing_ui

[![Code Quality & CI](https://github.com/FadlanBM/slicing_ui/actions/workflows/code-quality.yml/badge.svg)](https://github.com/FadlanBM/slicing_ui/actions/workflows/code-quality.yml)

A Flutter project for UI slicing, component showcase, and modern design implementation.

## Project Structure

Proyek ini mengadopsi arsitektur modular **Feature-First** dan **Design System Driven** agar proses slicing UI tetap bersih, terisolasi, dan mudah di-maintain:

```text
lib/
├── app/
│   ├── app.dart                   # Root MaterialApp (Theme, routes, localization)
│   └── routes/
│       ├── app_routes.dart        # Route path constants
│       └── app_router.dart        # Route generator (onGenerateRoute)
├── core/
│   ├── constants/
│   │   ├── app_colors.dart        # Brand, neutral, semantic, and dark mode colors
│   │   ├── app_text_styles.dart   # Typography tokens (h1, h2, title, body, caption)
│   │   ├── app_sizes.dart         # Spacing, padding, radius, and sizing constants
│   │   └── app_assets.dart        # Image & icon asset path constants
│   ├── theme/
│   │   └── app_theme.dart         # Material 3 light & dark theme definitions
│   ├── extensions/
│   │   └── context_extensions.dart# BuildContext helper extensions (theme, screen size, nav)
│   └── widgets/                   # Common reusable UI components
│       ├── app_button.dart        # Standard primary/secondary/outline button with loading
│       ├── app_text_field.dart    # Standard text input field
│       └── app_card.dart          # Standard card with elevation & border styling
├── features/
│   └── home/
│       ├── presentation/
│       │   ├── pages/
│       │   │   └── home_page.dart # Home showcase page
│       │   └── widgets/           # Feature-specific widgets
│       └── ...
└── main.dart                      # Application entry point
assets/
├── fonts/                         # Custom font files (.ttf, .otf)
├── icons/                         # SVG & raster icons
└── images/                        # Image assets
```

## Adding a New Screen / Feature

Untuk menambahkan hasil slicing UI fitur baru:
1. Buat direktori di `lib/features/<nama_fitur>/presentation/pages/` dan `widgets/`.
2. Gunakan design token dari `lib/core/constants/` (`AppColors`, `AppSizes`, `AppTextStyles`) agar UI konsisten dengan design system.
3. Manfaatkan shared widgets dari `lib/core/widgets/` (`AppButton`, `AppTextField`, `AppCard`).
4. Daftarkan rute baru di `lib/app/routes/app_routes.dart` dan `lib/app/routes/app_router.dart`.

## Code Quality & Verification

Proyek ini dilengkapi dengan pipeline static analysis, code formatting, dan automated tests:

```bash
# Cek format kode
dart format --output=none --set-exit-if-changed .

# Analisis kode statis & linter
flutter analyze --fatal-infos --fatal-warnings

# Menjalankan automated tests & coverage
flutter test --coverage
```
