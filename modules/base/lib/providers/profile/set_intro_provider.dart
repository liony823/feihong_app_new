import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_intro_provider.g.dart';

class SetIntroState {
  final String intro;

  SetIntroState({required this.intro});

  SetIntroState copyWith({String? intro}) {
    return SetIntroState(intro: intro ?? this.intro);
  }
}

@riverpod
class SetIntroController extends _$SetIntroController {
  AuthService get _authService => ref.read(authServiceProvider);

  @override
  SetIntroState build({required String intro}) {
    return SetIntroState(intro: intro);
  }

  void submit(String text) async {
    final context = Global.context;
    if (text == state.intro) {
      context?.router.pop();
    }
    final result = await LoadingView.singleton.wrap(
        asyncFunction: () => _authService.updateUserProfile(
              intro: text,
            ));

    if (result) {
      ref.invalidate(getCurrentUserProvider(SpHelper.uid));
      context?.router.pop();
    }
  }
}
