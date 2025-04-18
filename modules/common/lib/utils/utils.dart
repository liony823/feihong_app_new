import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

class Utils {
  static bool isEmptyOrNull(String? str) {
    return str == null || str.isEmpty;
  }

  static Future<CroppedFile?> uCrop(String path, {int compressQuality = 90}) {
    return ImageCropper().cropImage(
      sourcePath: path,
      compressQuality: compressQuality,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: '',
          toolbarColor: AppTheme.brandColor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false,
        ),
        IOSUiSettings(title: ''),
      ],
    );
  }
}
