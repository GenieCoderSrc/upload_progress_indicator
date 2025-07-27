import 'package:flutter/material.dart';

class PercentageTextUploadIndicator extends StatelessWidget {
  final double progress;
  final double size;
  final Color? color;

  const PercentageTextUploadIndicator({
    super.key,
    required this.progress,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final percent = (progress * 100).toInt();
    return Center(
      child: Text(
        '$percent%',
        style: TextStyle(
          color: color ?? Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: size / 2.5,
        ),
      ),
    );
  }
}
