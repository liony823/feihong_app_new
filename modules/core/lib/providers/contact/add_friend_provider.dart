import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/dialogs/add_friend_dialog.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_friend_provider.g.dart';

class AddFriendState {
  final SearchUserInfo userInfo;

  AddFriendState({
    required this.userInfo,
  });

  AddFriendState copyWith({
    SearchUserInfo? userInfo,
  }) {
    return AddFriendState(
      userInfo: userInfo ?? this.userInfo,
    );
  } 
}

@riverpod
class AddFriendProvider extends _$AddFriendProvider {

  ContactService get _contactService => ref.read(contactServiceProvider);

  @override
  AddFriendState build({
    required SearchUserInfo userInfo,
  }) {
    return AddFriendState(
      userInfo: userInfo,
    );
  }

  void openApplyDialog(){
    showDialog(context: Global.context!, builder:(context) =>  ApplyFriendDialog(onSubmit: submitApply,));
  }

  Future<bool> submitApply(String remark) async {
   final result = await LoadingView.singleton.wrap(asyncFunction: () async {
      final toUid = state.userInfo.uid; 
      final vercode = state.userInfo.vercode;
      return await _contactService.applyFriend(toUid: toUid, remark: remark, vercode: vercode);
    });

    if (result){
      final context = Global.context;
      if (context == null || !context.mounted) return false;
      ToastUtil.simpleToast(context.t.contact.friendHome.sendSuccess);
    }

    return result;
  }
}