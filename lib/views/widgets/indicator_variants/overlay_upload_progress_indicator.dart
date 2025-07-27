import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';

class OverlayUploadProgressIndicator extends StatelessWidget {
  final double progress;
  final XFile? pickedFile;
  final double size;
  final Color? color;

  const OverlayUploadProgressIndicator({
    super.key,
    required this.progress,
    this.pickedFile,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (pickedFile == null || pickedFile?.path == null) return const SizedBox.shrink();

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.file(File(pickedFile!.path)),
        Container(
          width: size * 1.5,
          height: size * 1.5,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: CircularProgressIndicator(
              value: progress,
              color: color ?? Colors.white,
              strokeWidth: 3,
            ),
          ),
        ),
      ],
    );
  }
}
