# Changelog

All notable changes to the **File Upload Progress Indicator** component will be documented in this file.

## 0.0.5

### Sep 8, 2025

### ✨ Updated

- Updated `reusable_editor` to 1.2.4

## 0.0.4

### Sep 8, 2025

### ✨ Updated

- Updated `reusable_editor` to 1.2.3

## 0.0.3

### Aug 22, 2025

### ✨ Updated

- Updated Dart sdk to 3.9.0
- Removed `flutter_lints` Dependency
- Updated `reusable_editor` to 1.2.2

## 0.0.2

### Aug 9, 2025

### ✨ Updated

* Updated dependency with reusable_editor: ^1.2.1

## 0.0.1

### July 27, 2025

### ✨ Added

* `FileUploadProgressIndicator` wrapper widget that integrates with `ImageFieldCubit`
* Support for 4 indicator variants:

    * `LinearUploadProgressIndicator`
    * `CircularUploadProgressIndicator`
    * `OverlayUploadProgressIndicator`
    * `PercentageTextUploadIndicator`
* `UploadIndicatorVariant` enum to define different display types
* `ProgressChildBuilder` typedef for custom child rendering

### ✅ Initial Release

* Designed using **SOLID principles**
* Well-separated responsibilities for variant-specific widgets
* Fully configurable (variant, size, color, custom builder)
* Integrated with `flutter_bloc` for reactive updates

---

Future updates will include additional indicator types, animation enhancements, and configuration extensions.
