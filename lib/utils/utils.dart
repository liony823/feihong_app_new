import 'package:azlistview/azlistview.dart';
import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:feihong_app_new/i18n/localized.g.dart';
import 'package:feihong_app_new/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:world_countries/world_countries.dart';

import '../global.dart';

class Utils {
  static toast({
    String? title,
    String? description,
  }) {
    final context = Global.context!;
    toastification.show(
      context: context,
      autoCloseDuration: 3.seconds,
      dragToClose: true,
      showProgressBar: false,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => IconButton(
          onPressed: onClose,
          icon: Icon(
            Icons.close,
            color: Styles.primaryLight,
          ),
        ),
      ),
      title: Text(title ?? context.t.httpError['title'] ?? '')
          .fontSize(16.sp)
          .textColor(Styles.primaryLight)
          .fontWeight(FontWeight.w600),
      description: Text(description ?? '')
          .textColor(Styles.primaryLight)
          .fontSize(14.sp)
          .fontWeight(FontWeight.w500),
      type: ToastificationType.custom(
        context.t.httpError['title'] ?? '',
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
}
