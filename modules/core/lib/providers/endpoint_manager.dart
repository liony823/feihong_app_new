import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'endpoint_manager.g.dart';

typedef EndpointHandler = dynamic Function(dynamic param);

class Endpoint {
  final String sid;
  final String category;
  final int sort;
  final EndpointHandler handler;

  const Endpoint({
    required this.sid,
    required this.category,
    required this.sort,
    required this.handler,
  });
}

@Riverpod(keepAlive: true)
class EndpointManager extends _$EndpointManager {
  final _controller = StreamController<_InvokeEvent>.broadcast();
  final _subscriptions = <String, StreamSubscription>{};

  @override
  Map<String, List<Endpoint>> build() => {};

  void setMethod(String sid, EndpointHandler handler) {
    _register(sid, '', 0, handler);
  }

  void setMethodWithCategory(
      String sid, String category, EndpointHandler handler) {
    _register(sid, category, 0, handler);
  }

  void setMethodFull(
      String sid, String category, int sort, EndpointHandler handler) {
    _register(sid, category, sort, handler);
  }

  void _register(
      String sid, String category, int sort, EndpointHandler handler) {
    final list = [...(state[category] ?? [] as List<Endpoint>)];
    list.add(
        Endpoint(sid: sid, category: category, sort: sort, handler: handler));
    state = {...state, category: list};

    _subscriptions.putIfAbsent(
      sid,
      () => _controller.stream
          .where((e) => e.sid == sid)
          .listen((e) => handler(e.param)),
    );
  }

  void remove(String sid) {
    final newState = <String, List<Endpoint>>{};
    for (final entry in state.entries) {
      final filtered = entry.value.where((e) => e.sid != sid).toList();
      if (filtered.isNotEmpty) {
        newState[entry.key] = filtered;
      }
    }
    state = newState;

    // 移除 stream listener
    _subscriptions.remove(sid)?.cancel();
  }

  void invoke(String sid, dynamic param) {
    _controller.add(_InvokeEvent(sid, param));
  }
}

class _InvokeEvent {
  final String sid;
  final dynamic param;

  _InvokeEvent(this.sid, this.param);
}
