import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:upload_progress_indicator/upload_progress_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload Progress Indicator Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UploadIndicatorExample(),
    );
  }
}

class UploadIndicatorExample extends StatefulWidget {
  const UploadIndicatorExample({super.key});

  @override
  State<UploadIndicatorExample> createState() => _UploadIndicatorExampleState();
}

class _UploadIndicatorExampleState extends State<UploadIndicatorExample> {
  late final ImageFieldCubit _imageFieldCubit;

  @override
  void initState() {
    super.initState();
    _imageFieldCubit = ImageFieldCubit();
  }

  @override
  void dispose() {
    _imageFieldCubit.close();
    super.dispose();
  }

  Future<void> _pickAndUploadImage() async {
    final File file = File('example/image.png'); // Simulated local file
    final XFile pickedFile = XFile(file.path);

    _imageFieldCubit.selectImage(pickedFile);
    _startFakeUpload(onProgress: _imageFieldCubit.updateUploadProgress);
  }

  void _startFakeUpload({required void Function(double) onProgress}) {
    double progress = 0.0;
    const duration = Duration(milliseconds: 200);

    Timer.periodic(duration, (timer) {
      progress += 0.05;
      if (progress >= 1.0) {
        progress = 1.0;
        timer.cancel();
      }
      onProgress(progress);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Progress Indicator Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 40,
          children: [
            UploadProgressIndicator(
              imageFieldCubit: _imageFieldCubit,
              variant: UploadIndicatorVariant.linear,
              size: 80,
              color: Colors.green,
            ),

            ElevatedButton(
              onPressed: _pickAndUploadImage,
              child: const Text('Pick and Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
