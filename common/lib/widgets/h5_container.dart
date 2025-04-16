import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// import 'package:webview_flutter_android/webview_flutter_android.dart';

import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class H5Container extends StatefulWidget {
  const H5Container({
    super.key,
    this.url,
    this.html,
    this.title,
    this.controller,
    this.progress,
  });

  final String? url;
  final String? title;
  final String? html;
  final WebViewController? controller;
  final double? progress;

  @override
  State<H5Container> createState() => _H5ContainerState();
}

class _H5ContainerState extends State<H5Container> {
  late WebViewController _controller;

  double _progress = 0;

  String _formatHtml(String content) {
    return '''
                      <!DOCTYPE html>
                      <html>
                      <head>
                          <meta name="viewport" content="width=device-width, initial-scale=1.0">
                      </head>
                      <body>
                          $content
                      </body>
                      </html>
                      ''';
  }

  @override
  void initState() {
    super.initState();

    if (widget.controller != null) {
      _controller = widget.controller!;
      return;
    }

    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
            setState(() {
              _progress = progress / 100;
            });
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              debugPrint('blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
          onHttpError: (HttpResponseError error) {
            debugPrint('Error occurred on page: ${error.response?.statusCode}');
          },
          onUrlChange: (UrlChange change) {
            debugPrint('url change to ${change.url}');
          },
          onHttpAuthRequest: (HttpAuthRequest request) {},
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message.message)));
        },
      );

    if (widget.html != null) {
      controller.loadHtmlString(_formatHtml(widget.html!));
    } else if (widget.url != null) {
      controller.loadRequest(Uri.parse(widget.url!));
    }

    if (!Platform.isMacOS) {
      controller.setBackgroundColor(const Color(0x80000000));
    }

    _controller = controller;
  }

  @override
  void didUpdateWidget(H5Container oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.url != widget.url) {
      _controller.loadRequest(Uri.parse(widget.url!));
    }
    if (oldWidget.html != widget.html) {
      _controller.loadHtmlString(_formatHtml(widget.html!));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final progress = widget.progress ?? _progress;
    return Scaffold(
      appBar: widget.title != null ? AppBar(title: Text(widget.title!)) : null,
      body: Stack(
        children: [
          progress < 1.0
              ? LinearProgressIndicator(
                value: progress,
                color: Styles.brandColor,
                minHeight: 2,
              )
              : WebViewWidget(controller: _controller),
        ],
      ),
    );
  }
}
