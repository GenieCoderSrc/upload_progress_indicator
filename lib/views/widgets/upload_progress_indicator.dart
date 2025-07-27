import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reusable_editor/reusable_editor.dart';
import 'package:upload_progress_indicator/type_def/type_def.dart';

import '../../enum/upload_indicator_variant.dart';
import 'indicator_variants/circular_upload_progress_indicator.dart';
import 'indicator_variants/linear_upload_progress_indicator.dart';
import 'indicator_variants/overlay_upload_progress_indicator.dart';
import 'indicator_variants/percentage_text_upload_indicator.dart';

class UploadProgressIndicator extends StatelessWidget {
  final ImageFieldCubit imageFieldCubit;
  final ProgressChildBuilder? childBuilder;
  final UploadIndicatorVariant variant;
  final double size;
  final Color? color;
  final double? radius;

  const UploadProgressIndicator({
    super.key,
    required this.imageFieldCubit,
    this.childBuilder,
    this.variant = UploadIndicatorVariant.linear,
    this.size = 40,
    this.radius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageFieldCubit, ImageFieldState>(
      bloc: imageFieldCubit,
      builder: (context, state) {
        if (!state.isUploading) return const SizedBox.shrink();

        final progress = state.uploadProgress.clamp(0.0, 1.0);

        if (childBuilder != null) {
          return childBuilder!(progress);
        }

        switch (variant) {
          case UploadIndicatorVariant.linear:
            return LinearUploadProgressIndicator(
              progress: progress,
              color: color,
              minHeight: size,
              radius: radius,
            );
          case UploadIndicatorVariant.circular:
            return CircularUploadProgressIndicator(
              progress: progress,
              size: size,
              color: color,
            );
          case UploadIndicatorVariant.overlay:
            return OverlayUploadProgressIndicator(
              progress: progress,
              pickedFile: state.pickedFile,
              size: size,
              color: color,
            );
          case UploadIndicatorVariant.percentageText:
            return PercentageTextUploadIndicator(
              progress: progress,
              size: size,
              color: color,
            );
        }
      },
    );
  }
}
