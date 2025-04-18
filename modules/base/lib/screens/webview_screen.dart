import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class WebViewScreen extends HookConsumerWidget {
  final String? url;
  final String? title;
  final String? htmlContent;
  const WebViewScreen({
    super.key,
    this.url,
    this.title,
    this.htmlContent,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Utils.isEmptyOrNull(url) && Utils.isEmptyOrNull(htmlContent)) {
      return const SizedBox.shrink();
    }
    return H5Container(
      url: url,
      title: title,
      html: htmlContent,
    );
  }
}
