import 'package:azlistview/azlistview.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:pinyin/pinyin.dart';

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

  static List<ISuspensionBeanPlus> convertToAZList(
      List<ISuspensionBeanPlus> list) {
    for (int i = 0, length = list.length; i < length; i++) {
      setAzPinyinAndTag(list[i]);
    }

    SuspensionUtil.sortListBySuspensionTag(list);

    SuspensionUtil.setShowSuspensionStatus(list);

    return list;
  }

  static ISuspensionBeanPlus setAzPinyinAndTag(ISuspensionBeanPlus info) {
    String pinyin = PinyinHelper.getPinyinE(info.getName());
    if (pinyin.trim().isEmpty) {
      info.tagIndex = "#";
    } else {
      String tag = pinyin.substring(0, 1).toUpperCase();
      info.namePinyin = pinyin.toUpperCase();
      if (RegExp("[A-Z]").hasMatch(tag)) {
        info.tagIndex = tag;
      } else {
        info.tagIndex = "#";
      }
    }
    return info;
  }
}
