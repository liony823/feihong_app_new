import 'dart:typed_data';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:screenshot/screenshot.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class QRcode extends StatefulWidget {
  final double? width;
  final double? height;

  const QRcode({
    super.key,
    this.width,
    this.height,
    required this.code,
  });

  final String code;

  @override
  State<QRcode> createState() => QRcodeState();
}

class QRcodeState extends State<QRcode> {
  ScreenshotController screenshotController = ScreenshotController();

  Future<dynamic> saveQrCodeToGallery() async {
    final image = await _capture();
    if (image != null) {
      final map = await ImageGallerySaverPlus.saveImage(image,
          quality: 100, isReturnImagePathOfIOS: true);
      if (context.mounted) {
        ToastUtil.toast(
          title: context.t.c.saveSuccessfully,
          description: context.t.c.saveToGallery,
        );
      }
      return map;
    }
  }

  Future<Uint8List?> _capture() async {
    final ps = await _permissionCheck();
    if (ps != PermissionState.authorized && ps != PermissionState.limited) {
      return null;
    }
    final image = await LoadingView.singleton.wrap(
      asyncFunction: () async {
        final image = await screenshotController.capture();
        if (image != null) {
          return image;
        }
      },
    );
    return image;
  }

  Future<PermissionState> _permissionCheck() async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (ps != PermissionState.authorized && ps != PermissionState.limited) {
      if (context.mounted) {
        ToastUtil.toast(
          title: context.t.c.saveFailed,
          description: context.t.c.permanentlyDenied,
        );
      }
    }
    return ps;
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(8.w),
        child: PrettyQrView.data(
            data: widget.code,
            errorCorrectLevel: QrErrorCorrectLevel.H,
            decoration: const PrettyQrDecoration(
                shape: PrettyQrSmoothSymbol(
                  color: AppTheme.primaryDarkColor,
                ),
                image: PrettyQrDecorationImage(
                  image: AssetImage(ImageRes.logo),
                ))),
      ),
    );
  }
}
