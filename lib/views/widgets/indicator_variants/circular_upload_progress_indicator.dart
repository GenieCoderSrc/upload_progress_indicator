import 'package:flutter/material.dart';

class CircularUploadProgressIndicator extends StatelessWidget {
  final double progress;
  final double size;
  final Color? color;

  const CircularUploadProgressIndicator({
    super.key,
    required this.progress,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        value: progress,
        color: color ?? Theme.of(context).primaryColor,
        strokeWidth: 4,
      ),
    );
  }
}
