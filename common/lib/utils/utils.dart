import 'package:azlistview/azlistview.dart';
import 'package:common/common.dart';
import 'package:device_region/device_region.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toastification/toastification.dart';

class Utils {
  static simpleToast(
    String text, {
    ToastPosition position = ToastPosition.top,
  }) {
    showToast(
      text,
      position: position,
      radius: 12.r,
      backgroundColor: Styles.backgroundColorDark,
      margin: EdgeInsets.only(left: 46.w, right: 46.w, top: 24.h),
      textPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: Styles.primaryLight,
      ),
    );
  }

  static toast({String? title, String? description}) {
    final context = Global.context!;
    toastification.show(
      context: context,
      autoCloseDuration: 3.seconds,
      dragToClose: true,
      showProgressBar: false,
      closeButton: ToastCloseButton(
        buttonBuilder:
            (context, onClose) => IconButton(
              onPressed: onClose,
              icon: Icon(Icons.close, color: Styles.primaryLight),
            ),
      ),
      title: Text(title ?? context.t.errors.httpError['title'] ?? '')
          .fontSize(16.sp)
          .textColor(Styles.primaryLight)
          .fontWeight(FontWeight.w600),
      description: Text(description ?? '')
          .textColor(Styles.primaryLight)
          .fontSize(14.sp)
          .fontWeight(FontWeight.w500),
      type: ToastificationType.custom(
        context.t.errors.httpError['title'] ?? '',
        Styles.backgroundColorDark,
        Icons.error,
      ),
      style: ToastificationStyle.fillColored,
      borderRadius: BorderRadius.circular(8.r),
    );
  }

  /// 判断字符串是否为空或者null
  static bool isEmptyOrNull(String? str) {
    return str == null || str.isEmpty;
  }

  /// 将列表转换为AZ列表
  static List<ISuspensionBean> convertToAZList(List<ISuspensionBean> list) {
    for (int i = 0, length = list.length; i < length; i++) {
      setAzPinyinAndTag(list[i]);
    }

    SuspensionUtil.sortListBySuspensionTag(list);

    SuspensionUtil.setShowSuspensionStatus(list);

    return list;
  }

  /// 设置AZ列表
  static ISuspensionBean setAzPinyinAndTag(ISuspensionBean info) {
    return info;
  }

  /// 获取当前地区的国家代码
  static Future<String> getSIMCountryCode() async {
    final code = await DeviceRegion.getSIMCountryCode();
    return code ?? '';
  }

  static Future<CroppedFile?> uCrop(String path, {int compressQuality = 90}) {
    return ImageCropper().cropImage(
      sourcePath: path,
      compressQuality: compressQuality,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: '',
          toolbarColor: Styles.brandColor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false,
        ),
        IOSUiSettings(title: ''),
      ],
    );
  }
}
