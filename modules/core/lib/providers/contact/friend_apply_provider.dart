import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'friend_apply_provider.g.dart';

class FriendApplyState {
  final int total;
  final List<FriendApply> list;

  const FriendApplyState({
    required this.total,
    required this.list,
  });

  FriendApplyState copyWith({
    int? total,
    List<FriendApply>? list,
  }) {
    return FriendApplyState(
      total: total ?? this.total,
      list: list ?? this.list,
    );
  }

  // 近三天的申请
  List<FriendApply> get recentApplyList {
    final thresholdDate = DateTime.now().subtract(const Duration(days: 3));
    return list
        .where((element) => element.createdAt.toDateTime.isAfter(thresholdDate))
        .toList();
  }

  // 三天前的申请
  List<FriendApply> get oldApplyList {
    final thresholdDate = DateTime.now().subtract(const Duration(days: 3));
    return list
        .where(
            (element) => element.createdAt.toDateTime.isBefore(thresholdDate))
        .toList();
  }
}

@Riverpod(keepAlive: true)
class FriendApplyController extends _$FriendApplyController {
  static const int _defaultPageSize = 50;

  int _currentPage = 1;

  ContactService get _contactService => ref.watch(contactServiceProvider);
  ContactController get _contactController =>
      ref.watch(contactControllerProvider.notifier);

  @override
  FutureOr<FriendApplyState> build() async {
    _currentPage = 1;
    final result = await _fetchApplyList(pageIndex: _currentPage);
    return FriendApplyState(
      total: result.total,
      list: result.list,
    );
  }

  Future<int> onRefresh() async {
    _currentPage = 1;
    final result = await _fetchApplyList(pageIndex: _currentPage);
    state = AsyncData(
      state.requireValue.copyWith(
        total: result.total,
        list: result.list,
      ),
    );
    return result.total;
  }

  Future<int> onLoadMore() async {
    _currentPage++;
    final result = await _fetchApplyList(pageIndex: _currentPage);

    state = AsyncData(
      state.requireValue.copyWith(
        total: result.total,
        list: [...state.value!.list, ...result.list],
      ),
    );
    return result.total;
  }

  Future<Pagination<FriendApply>> _fetchApplyList(
      {required int pageIndex}) async {
    return await _contactService.getFriendApplyList(
      pageIndex: pageIndex,
      pageSize: _defaultPageSize,
    );
  }

  Future<void> updateApplyStatus(
      FriendApply apply, FriendApplyStatus newStatus) async {
    final newList = state.requireValue.list
        .map((e) => e.token == apply.token ? e.copyWith(status: newStatus) : e)
        .toList();
    state = AsyncData(state.requireValue.copyWith(list: newList));
  }

  Future<void> onAccept(FriendApply apply) async {
    final result = await LoadingView.singleton.wrap(
      asyncFunction: () async {
        return await _contactService.acceptFriendApply(apply.token);
      },
    );
    if (result) {
      ToastUtil.simpleToast(
          Global.context!.t.contact.friendApply.acceptSuccess);
      updateApplyStatus(apply, FriendApplyStatus.accepted);
      _contactController.syncContacts();
    }
  }

  Future<void> onRefuse(FriendApply apply) async {
    final result = await LoadingView.singleton.wrap(
      asyncFunction: () async {
        return await _contactService.refuseFriendApply(apply.toUid);
      },
    );
    if (result) {
      ToastUtil.simpleToast(
          Global.context!.t.contact.friendApply.refuseSuccess);
      updateApplyStatus(apply, FriendApplyStatus.refused);
    }
  }

  void addFriendApply(FriendApply apply) {
    final newList = [...state.requireValue.list, apply];
    state = AsyncData(state.requireValue.copyWith(list: newList));
  }
}



