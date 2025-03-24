import 'package:auto_route/auto_route.dart';
import 'package:feihong/global.dart';
import 'package:feihong/route/router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_provier.g.dart';

@riverpod
class SigninController extends _$SigninController {
  @override
  FutureOr<void> build() async {
    return ;
  }

  void signin() {}

  void toLangPage() {
    Global.context!.router.push(const LangRoute());
  }
}