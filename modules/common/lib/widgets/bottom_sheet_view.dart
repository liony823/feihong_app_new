import 'package:common/common.dart';
import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({
    super.key,
    required this.items,
    this.itemHeight,
    this.textStyle,
    this.mainAxisAlignment,
    this.isOverlaySheet = false,
    this.onCancel,
  });
  final List<SheetItem> items;
  final double? itemHeight;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;
  final bool isOverlaySheet;
  final Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: items.map((e) => _parseItem(context, e)).toList(),
        ),
        8.verticalSpace,
        _itemBgView(
          context,
          label: context.t.c.cancel,
          onTap: isOverlaySheet ? onCancel : () => context.pop(),
          alignment: MainAxisAlignment.center,
          isCancel: true,
        ),
      ],
    );
  }

  Widget _parseItem(BuildContext context, SheetItem item) {
    bool isLast = items.indexOf(item) == items.length - 1;
    bool isFirst = items.indexOf(item) == 0;
    return _itemBgView(
      context,
      label: item.label,
      textStyle: item.textStyle,
      icon: item.icon,
      alignment: item.alignment,
      line: !isLast,
      isFirst: isFirst,
      onTap: item.onTap != null
          ? () {
              if (!isOverlaySheet) context.pop(item.result);
              item.onTap?.call();
            }
          : null,
    );
  }

  Widget _itemBgView(
    BuildContext context, {
    required String label,
    String? icon,
    Function()? onTap,
    TextStyle? textStyle,
    MainAxisAlignment? alignment,
    bool isFirst = false,
    bool line = false,
    bool isCancel = false,
  }) =>
      Ink(
        decoration: BoxDecoration(
          color: AppTheme.primaryLightColor,
          borderRadius: isFirst
              ? BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                )
              : null,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: isFirst
              ? BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                )
              : null,
          child: Container(
            decoration: line
                ? BoxDecoration(
                    border: BorderDirectional(
                      bottom:
                          BorderSide(color: AppTheme.dividerColor, width: 1.w),
                    ),
                  )
                : null,
            height: itemHeight ??
                (isCancel
                    ? 36.h + MediaQuery.of(context).padding.bottom
                    : 56.h),
            padding: isCancel
                ? EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom)
                : null,
            child: Row(
              mainAxisAlignment:
                  alignment ?? mainAxisAlignment ?? MainAxisAlignment.center,
              children: [
                if (null != icon) 10.horizontalSpace,
                if (null != icon) _image(icon),
                if (null != icon) 5.horizontalSpace,
                _text(label, textStyle),
              ],
            ),
          ),
        ),
      );

  _text(String label, TextStyle? style) => Text(
        label,
        style: style ??
            TextStyle(
              color: AppTheme.lightTextColor,
              fontSize: 17.sp,
            ),
      );

  _image(String icon) => icon.toImage
    ..width = 24.w
    ..height = 24.h;
}

class SheetItem {
  final String label;
  final TextStyle? textStyle;
  final String? icon;
  final Function()? onTap;
  final BorderRadius? borderRadius;
  final MainAxisAlignment? alignment;
  final dynamic result;

  SheetItem({
    required this.label,
    this.textStyle,
    this.icon,
    this.onTap,
    this.borderRadius,
    this.alignment,
    this.result,
  });
}
