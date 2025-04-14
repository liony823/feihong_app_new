import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/route/router.gr.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_provier.g.dart';

class SigninState {
  final bool isChecked;
  SigninState({
    required this.isChecked,
  });

  SigninState copyWith({
    bool? isChecked,
    bool? loginLoading,
  }) {
    return SigninState(
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

@riverpod
class SigninController extends _$SigninController {
  @override
  SigninState build() {
    return SigninState(isChecked: true);
  }

  void signin() {}

  void signinWithDevice() {
    Global.context?.loaderOverlay.show();
    Future.delayed(const Duration(seconds: 2), () {
      Global.context?.loaderOverlay.hide();
    });
  }

  void handleChangeChecked(bool? value) {
    state = state.copyWith(isChecked: value);
  }

  void toLangPage() {
    Global.context!.router.push(const LangRoute());
  }
}
