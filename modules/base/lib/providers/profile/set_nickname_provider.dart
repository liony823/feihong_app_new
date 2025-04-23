import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_nickname_provider.g.dart';

class SetNicknameState {
  final String nickname;

  SetNicknameState({required this.nickname});

  SetNicknameState copyWith({String? nickname}) {
    return SetNicknameState(nickname: nickname ?? this.nickname);
  }
}

@riverpod
class SetNicknameController extends _$SetNicknameController {
  AuthService get _authService => ref.read(authServiceProvider);

  @override
  SetNicknameState build({required String nickname}) {
    return SetNicknameState(nickname: nickname);
  }

  void submit(String text) async {
    if (text.isEmpty) {
      ToastUtil.simpleToast(Global.context!.t.c.profile.plsEnterNickname);
      return;
    }
    final context = Global.context;
    if (text == state.nickname) {
      context?.router.pop();
    }
    final result = await LoadingView.singleton.wrap(
        asyncFunction: () => _authService.updateUserProfile(
              name: text,
            ));

    if (result) {
      ref.invalidate(getCurrentUserProvider(SpHelper.uid));
      context?.router.pop();
    }
    context?.router.pop();
  }
}
