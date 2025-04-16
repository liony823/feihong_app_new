import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/config.dart';
import 'package:feihong/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  _initialApp() async {
    if (Config.appConfig?.loginType == 4) {
      Global.context!.router.replace(const LoginWithDeviceRoute());
    } else {
      Global.context!.router.replace(const SigninRoute());
    }
    // final uid = DataSp.uid;
    // final token = DataSp.token;
    // if (uid.isEmpty || token.isEmpty) {
    //   if (Config.appConfig?.loginType == 4) {
    //     Global.context!.router.replace(const LoginWithDeviceRoute());
    //   } else {
    //     Global.context!.router.replace(const SigninRoute());
    //   }
    // } else {
    //   await IMUtils.initIM(uid, token);
    //   Future.delayed(const Duration(milliseconds: 1500), () {
    //     Global.context!.router.replace(const HomeRoute());
    //   });
    // }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      _initialApp();
      return null;
    }, []);

    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Container(
      color: Styles.primaryLight,
      child: Center(
        child: ImageRes.logo.toImage
          ..width = 48.w
          ..height = 48.w,
      ),
    );
  }
}
