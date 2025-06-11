import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';
import 'package:url_launcher/url_launcher.dart';

final _permissionRequestLock = Lock();

/// Executes [computation] when [_permissionRequestLock] is available.
///
/// Only one asynchronous block can run while the [_permissionRequestLock]
/// is retained.
Future<T> runInPermissionRequestLock<T>(
  FutureOr<T> Function() computation, {
  Duration? timeout,
}) {
  return _permissionRequestLock.synchronized(
    computation,
    timeout: timeout,
  );
}

/// Launch URL
Future<void> launchURL(BuildContext context, String url) async {
  try {
    await launchUrl(
      Uri.parse(url).withScheme,
      mode: LaunchMode.externalApplication,
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(context.t.c.launchUrlError)),
    );
  }
}

/// Get centerTitle considering a default and platform specific behaviour
bool getEffectiveCenterTitle(
  ThemeData theme, {
  bool? centerTitle,
  List<Widget>? actions,
}) {
  if (centerTitle != null) return centerTitle;
  if (theme.appBarTheme.centerTitle != null) {
    return theme.appBarTheme.centerTitle!;
  }
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return false;
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return actions == null || actions.length < 2;
  }
}