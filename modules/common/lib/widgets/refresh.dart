import 'package:common/common.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

class Refresh extends StatefulWidget {
  final Widget Function(BuildContext context, ScrollPhysics physics)
      childBuilder;
  final Future<int> Function()? onRefresh;
  final Future<int> Function()? onLoadMore;
  final bool refreshOnStart;
  final int pageSize;
  final IndicatorPosition headerPosition;
  final IndicatorPosition footerPosition;
  const Refresh({
    super.key,
    required this.childBuilder,
    this.onRefresh,
    this.onLoadMore,
    this.refreshOnStart = false,
    this.pageSize = 50,
    this.headerPosition = IndicatorPosition.above,
    this.footerPosition = IndicatorPosition.above,
  });

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  late EasyRefreshController controller;

  @override
  void initState() {
    super.initState();
    controller = EasyRefreshController(
      controlFinishLoad: true,
      controlFinishRefresh: true,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onRefresh() {
    widget.onRefresh?.call().then((value) {
      controller.finishRefresh(IndicatorResult.success);
    }).catchError((error) {
      controller.finishRefresh(IndicatorResult.fail);
    });
  }

  void _onLoadMore() {
    widget.onLoadMore?.call().then((value) {
      if (value < widget.pageSize) {
        controller.finishLoad(IndicatorResult.noMore);
      } else {
        controller.finishLoad(IndicatorResult.success);
      }
    }).catchError((error) {
      controller.finishLoad(IndicatorResult.fail);
    });
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(
      controller: controller,
      onLoad: _onLoadMore,
      onRefresh: _onRefresh,
      refreshOnStart: widget.refreshOnStart,
      header: ClassicHeader(
        position: widget.headerPosition,
        dragText: context.t.c.refresh.pullToRefresh,
        armedText: context.t.c.refresh.releaseReady,
        readyText: context.t.c.refresh.refreshLoading,
        processingText: context.t.c.refresh.refreshLoading,
        processedText: context.t.c.refresh.refreshSuccess,
        failedText: context.t.c.refresh.refreshFailed,
        noMoreText: context.t.c.refresh.noMoreData,
        messageText: context.t.c.refresh.lastUpdateAt,
      ),
      footer: ClassicFooter(
        position: widget.footerPosition,
        dragText: context.t.c.refresh.pullToLoad,
        armedText: context.t.c.refresh.releaseReady,
        readyText: context.t.c.refresh.loading,
        processingText: context.t.c.refresh.loading,
        processedText: context.t.c.refresh.loadSuccess,
        failedText: context.t.c.refresh.loadFailed,
        noMoreText: context.t.c.refresh.noMoreData,
        messageText: context.t.c.refresh.lastUpdateAt,
      ),
      childBuilder: (context, physics) {
        return widget.childBuilder(context, physics);
      },
    );
  }
}
