
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ApplyFriendDialog extends HookWidget {
  final Future<bool> Function(String) onSubmit;
  const ApplyFriendDialog({super.key,required this.onSubmit});


  void _submit(BuildContext context, String remark) async {
    final result = await onSubmit(remark);
    if (result) {
      if (!context.mounted) return;
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final remark = useState("");
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.w),
      ),
      backgroundColor: AppTheme.primaryLightColor,
      // contentPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
      title: Text(context.t.contact.friendHome.applyFriend),
      titlePadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
      content: SizedBox(
        width: 0.85.sw,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 6.w,
          children: [
          Text(context.t.contact.friendHome.sendApply).textColor(AppTheme.lightSecondaryTextColor2).fontSize(16.sp),
          Input(name: 'remark', placeholder: context.t.contact.friendHome.applyFriend,onChanged: (value) {
            remark.value = value ?? "";
          },),
          24.verticalSpace,
          SizedBox(width: double.infinity, child: FilledButton(onPressed: () => _submit(context,remark.value), child: Text(context.t.contact.friendHome.send)))
          ],
        ),
      )
    );
  }
}