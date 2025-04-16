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
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: items.map((e) => _parseItem(context, e)).toList(),
              ),
            ),
            10.verticalSpace,
            _itemBgView(
              label: context.t.c.cancel,
              onTap: isOverlaySheet ? onCancel : () => context.pop(),
              borderRadius: BorderRadius.circular(6.r),
              alignment: MainAxisAlignment.center,
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _parseItem(BuildContext context, SheetItem item) {
    BorderRadius? borderRadius;
    int length = items.length;
    bool isLast = items.indexOf(item) == items.length - 1;
    bool isFirst = items.indexOf(item) == 0;
    if (length == 1) {
      borderRadius = item.borderRadius ?? BorderRadius.circular(6.r);
    } else {
      borderRadius =
          item.borderRadius ??
          BorderRadius.only(
            topLeft: isFirst ? Radius.circular(6.r) : Radius.zero,
            topRight: isFirst ? Radius.circular(6.r) : Radius.zero,
            bottomLeft: isLast ? Radius.circular(6.r) : Radius.zero,
            bottomRight: isLast ? Radius.circular(6.r) : Radius.zero,
          );
    }
    return _itemBgView(
      label: item.label,
      textStyle: item.textStyle,
      icon: item.icon,
      alignment: item.alignment,
      line: !isLast,
      borderRadius: borderRadius,
      onTap: () {
        if (!isOverlaySheet) context.pop(item.result);
        item.onTap?.call();
      },
    );
  }

  Widget _itemBgView({
    required String label,
    String? icon,
    Function()? onTap,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    MainAxisAlignment? alignment,
    bool line = false,
  }) => Ink(
    decoration: BoxDecoration(
      color: Styles.primaryLight,
      borderRadius: borderRadius,
    ),
    child: InkWell(
      onTap: onTap,
      child: Container(
        decoration:
            line
                ? BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(color: Styles.dividerColor, width: 0.5),
                  ),
                )
                : null,
        height: itemHeight ?? 56.h,
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

  _text(String label, TextStyle? style) => Text(label)
      .textColor(Styles.neutral700)
      .fontSize(17.sp)
      .textAlignment(TextAlign.center);

  _image(String icon) =>
      icon.toImage
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
