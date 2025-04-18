import 'package:azlistview/azlistview.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class WrapAzListView<T extends ISuspensionBean> extends StatelessWidget {
  const WrapAzListView({
    super.key,
    required this.data,
    required this.itemCount,
    required this.itemBuilder,
    this.showSuspension = false,
  });

  final List<T> data;
  final int itemCount;
  final bool showSuspension;
  final Widget Function(BuildContext context, T data, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return AzListView(
      data: data,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        var model = data[index];
        return itemBuilder(context, model, index);
      },
      susItemBuilder: (BuildContext context, int index) {
        var model = data[index];
        if (showSuspension) {
          if ('↑' == model.getSuspensionTag()) {
            return const SizedBox.shrink();
          }
          return _buildTagView(model.getSuspensionTag());
        }
        return const SizedBox.shrink();
      },
      susItemHeight: 23.h,
      indexBarData: SuspensionUtil.getTagIndexList(data),
      indexBarOptions: IndexBarOptions(
        needRebuild: true,
        selectTextStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
        indexHintWidth: 96,
        indexHintHeight: 97,
        indexHintAlignment: Alignment.centerRight,
        indexHintTextStyle: TextStyle(
          color: AppTheme.lightSecondaryTextColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        indexHintOffset: const Offset(-30, 0),
      ),
    );
  }

  Widget _buildTagView(String tag) => Container(
        height: 23.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        alignment: Alignment.centerLeft,
        width: 1.sw,
        color: AppTheme.primaryLightColor,
        child: Text(
          tag,
          style: TextStyle(
            color: AppTheme.lightSecondaryTextColor4,
            fontSize: 14.sp,
          ),
        ),
      );
}
