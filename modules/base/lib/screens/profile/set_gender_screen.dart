import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SetGenderScreen extends HookConsumerWidget {
  final int gender;
  const SetGenderScreen({super.key, required this.gender});

  void _submit(BuildContext context, WidgetRef ref, int gender) async {
    final service = ref.read(authServiceProvider);
    final result = await LoadingView.singleton.wrap(
        asyncFunction: () => service.updateUserProfile(
              sex: gender,
            ));

    if (result) {
      ref.invalidate(getCurrentUserProvider(SpHelper.uid));
      if (context.mounted) {
        context.router.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gender = useState(this.gender);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.w,
        title: context.t.c.profile.sex.appBarText,
        leadingWidth: 108.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.w),
          child: GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: Text(context.t.c.cancel)
                .textColor(AppTheme.lightTextColor)
                .fontSize(16.sp),
          ),
        ),
        actions: [
          Container(
            height: 32.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.w),
                ),
                minimumSize: Size(48.w, 32.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 0.w,
                ),
              ),
              onPressed: gender.value != this.gender
                  ? () {
                      _submit(context, ref, gender.value);
                    }
                  : null,
              child: Text(context.t.c.save),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppTheme.primaryLightColor,
          border: Border(
            top: BorderSide(
              color: AppTheme.dividerColor2,
            ),
          ),
        ),
        child: Column(
          children: context.t.c.gender
              .map((e) => _buildItemView(context,
                      title: e,
                      isSelected: gender.value == context.t.c.gender.indexOf(e),
                      onTap: () {
                    gender.value = context.t.c.gender.indexOf(e);
                  }))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildItemView(
    BuildContext context, {
    required String title,
    required bool isSelected,
    required void Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: AppTheme.dividerColor2,
          ),
        )),
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title).fontSize(16.sp),
            if (isSelected)
              Icon(
                Icons.check,
                color: AppTheme.brandColor,
              ),
          ],
        ),
      ),
    );
  }
}
