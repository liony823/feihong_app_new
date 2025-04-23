import 'dart:ui';

import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingView {
  static final LoadingView singleton = LoadingView._();

  factory LoadingView() => singleton;

  LoadingView._();

  OverlayState? _overlayState;
  OverlayEntry? _overlayEntry;
  bool _isVisible = false;

  OverlayState? _progressOverlayState;
  OverlayEntry? _progressOverlayEntry;
  bool isProgressVisible = false;

  Future<T> wrap<T>({
    required Future<T> Function() asyncFunction,
    bool showing = true,
  }) async {
    await Future.delayed(1.milliseconds);
    if (showing) show();
    T data;
    try {
      data = await asyncFunction();
    } on Exception catch (_) {
      rethrow;
    } finally {
      dismiss();
    }
    return data;
  }

  void show() async {
    if (_isVisible) return;
    _overlayState = Overlay.of(Global.context!);
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(color: Colors.black.withValues(alpha: .1)),
            ),
            Center(
              child: SpinKitWave(
                color: AppTheme.primaryLightColor,
                size: 24.w,
              ),
            ),
          ],
        ),
      ),
    );
    _isVisible = true;
    _overlayState?.insert(_overlayEntry!);
  }

  dismiss() async {
    if (!_isVisible && !isProgressVisible) return;
    _overlayEntry?.remove();
    _progressOverlayEntry?.remove();
    _isVisible = false;
    isProgressVisible = false;
  }

  void progress(Stream<double> stream) async {
    _progressOverlayState = Overlay.of(Global.context!);
    _progressOverlayEntry = OverlayEntry(
      builder: (BuildContext context) => GestureDetector(
        onTap: dismiss,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(0, 37, 33, 33),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF0C1C33),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CupertinoActivityIndicator(
                    color: Colors.white,
                    radius: 20,
                  ),
                  StreamBuilder(
                    stream: stream,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<double> snapshot,
                    ) {
                      if (!snapshot.hasData) return Container();
                      final progress = snapshot.data ?? 0.0;
                      return Text(
                        '${(progress * 100).toStringAsFixed(1)}%',
                        style: const TextStyle(color: Colors.white),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    isProgressVisible = true;
    _progressOverlayState?.insert(_progressOverlayEntry!);
  }
}
