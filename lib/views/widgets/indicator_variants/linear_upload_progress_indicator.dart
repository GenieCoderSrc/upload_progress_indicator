import 'package:flutter/material.dart';

class LinearUploadProgressIndicator extends StatelessWidget {
  final double progress;
  final Color? color;
  final double? radius;
  final double? minHeight;

  const LinearUploadProgressIndicator({
    super.key,
    required this.progress,
    this.color,
    this.radius,
    this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
      color: color ?? Theme.of(context).primaryColor,
      backgroundColor: Colors.grey.shade300,
      minHeight: minHeight,
      borderRadius: BorderRadius.circular(radius ?? 20.0),
    );
  }
}
