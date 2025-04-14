import 'package:common/common.dart';
import 'package:feihong/app.dart';
import 'package:feihong/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart';


void main() {
  Chain.capture(() {
    Config.init(() => runApp(ProviderScope(child: App())));
  }, onError: (error, stackTrace) {
    Logger.print(error);
    Logger.print(stackTrace);
  });
}