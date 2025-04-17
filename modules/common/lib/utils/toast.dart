import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toastification/toastification.dart';

class ToastUtil {
  static simpleToast(
    String text, {
    ToastPosition position = ToastPosition.top,
  }) {
    showToast(
      text,
      position: position,
      radius: 8.r,
      backgroundColor: AppTheme.darkBackgroundColor,
      margin: EdgeInsets.only(left: 46.w, right: 46.w, top: 24.h),
      textPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      textStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppTheme.primaryLightColor,
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
        buttonBuilder: (context, onClose) => IconButton(
          onPressed: onClose,
          icon: Icon(Icons.close, color: AppTheme.primaryLightColor),
        ),
      ),
      title: Text(title ?? context.t.errors.httpError['title'] ?? '')
          .fontSize(16.sp)
          .textColor(AppTheme.primaryLightColor)
          .fontWeight(FontWeight.w600),
      description: Text(description ?? '')
          .textColor(AppTheme.primaryLightColor)
          .fontSize(14.sp)
          .fontWeight(FontWeight.w500),
      type: ToastificationType.custom(
        context.t.errors.httpError['title'] ?? '',
        AppTheme.darkBackgroundColor,
        Icons.error,
      ),
      style: ToastificationStyle.fillColored,
      borderRadius: BorderRadius.circular(8.r),
    );
  }
}
