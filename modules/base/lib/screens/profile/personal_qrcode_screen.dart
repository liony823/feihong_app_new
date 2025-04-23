import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class PersonalQrcodeScreen extends HookConsumerWidget {
  final String uid;
  const PersonalQrcodeScreen({super.key, required this.uid});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrKey = useMemoized(() => GlobalKey<QRcodeState>());
    final currentUser = ref.watch(getCurrentUserProvider(uid));
    final myQrCode = ref.watch(getMyQrCodeProvider);

    return Scaffold(
      backgroundColor: Color(0xFF5456F6),
      appBar: AppBar(
        backgroundColor: Color(0xFF5456F6),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Icon(
            EvaIcons.arrow_back_outline,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          switch (currentUser) {
            AsyncData(:final value) => Container(
                margin: EdgeInsets.symmetric(horizontal: 32.w),
                padding: EdgeInsets.symmetric(vertical: 24.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.w),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.darkShadowColor,
                      blurRadius: 10.w,
                      offset: Offset(0, 4.w),
                    ),
                  ],
                ),
                child: Column(
                  spacing: 12.w,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.w, vertical: 12.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Avatar(
                            size: 48.w,
                            uid: uid,
                            name: value?.name ?? '',
                            url: Apis.getAvatarUrl(value?.uid ?? ''),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                          12.horizontalSpace,
                          Text(value?.name ?? '')
                              .fontSize(16.sp)
                              .fontWeight(FontWeight.w500),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1.h,
                      color: AppTheme.dividerColor2,
                      indent: 32.w,
                      endIndent: 32.w,
                    ),
                    12.verticalSpace,
                    QRcode(
                      key: qrKey,
                      code: myQrCode.value ?? '',
                      width: 200.w,
                      height: 200.w,
                    )
                  ],
                ),
              ),
            AsyncError(:final error) => ErrorRetryWidget(
                message: error.toString(),
                onRetry: () {
                  ref.invalidate(getCurrentUserProvider(uid));
                },
              ),
            _ => const CircularProgressIndicator(),
          },
          48.verticalSpace,
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 64.w),
            child: FilledButton(
              onPressed: () {
                qrKey.currentState?.saveQrCodeToGallery();
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF5456F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48.w),
                ),
              ),
              child: Text(context.t.c.profile.saveImage),
            ),
          ),
          .1.sh.verticalSpace,
        ],
      ),
    );
  }
}
