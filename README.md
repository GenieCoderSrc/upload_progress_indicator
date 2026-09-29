# upload_progress_indicator

This component is a flexible and customizable widget for displaying file upload progress in Flutter applications. It supports multiple styles and allows for easy integration with Cubit state management using `ImageFieldCubit`.

## ✨ Features

* Multiple indicator variants:

    * `linear`
    * `circular`
    * `overlay`
    * `percentageText`
* Supports custom child builder via `childBuilder`
* Configurable size, radius, color, etc
* Responsive to `ImageFieldCubit` state changes


## 🚀 Usage

```dart
UploadProgressIndicator(
  imageFieldCubit: yourCubitInstance,
  variant: UploadIndicatorVariant.circular,
  size: 48,
  color: Colors.blue,
);
```

Or with a custom child:

```dart
UploadProgressIndicator(
  imageFieldCubit: yourCubitInstance,
  childBuilder: (progress) => Text('${(progress * 100).round()}%'),
);
```

## 🔧 Constructor Parameters

| Parameter         | Type                     | Description                                                           |
| ----------------- | ------------------------ |-----------------------------------------------------------------------|
| `imageFieldCubit` | `ImageFieldCubit`        | Required. Controls the upload progress state.                         |
| `variant`         | `UploadIndicatorVariant` | Optional. Defaults to `linear`.                                       |
| `size`            | `double`                 | Optional. Default is `40`. Used for size in circular/overlay.         |
| `color`           | `Color?`                 | Optional. Custom color for indicator.                                 |
| `radius`          | `double?`                | Optional. Default is `20`. Used for circular borderRadius in linear.  |
| `childBuilder`    | `ProgressChildBuilder?`  | Optional. Custom widget based on progress value.                      |

## 📁 Variant Details

### 🔵 `CircularUploadProgressIndicator`

* Displays a circular progress bar

### 🔷 `LinearUploadProgressIndicator`

* Standard linear indicator with background color

### 🖼 `OverlayUploadProgressIndicator`

* Displays a file preview with a centered progress overlay

### 🔢 `PercentageTextUploadIndicator`

* Text-only indicator showing percentage progress

## 📌 Dependencies

Ensure you have the following packages:

```yaml
resolution: workspace

dependencies:
  flutter:
  flutter_bloc:
```

## 🧱 Extendability

To add a new variant:

1. Add enum value to `UploadIndicatorVariant`
2. Create a new widget implementing the new style
3. Extend the switch-case in `UploadProgressIndicator`

---

Made with ❤️ using SOLID principles and composable widgets for clean and maintainable UI components.

## License

© MIT License. Developed with ❤️ by [Shohidul Islam](https://github.com/ShohidulProgrammer)


