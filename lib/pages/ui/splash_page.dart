import 'package:auto_route/auto_route.dart';
import 'package:feihong/common.dart';
import 'package:feihong/global.dart';
import 'package:feihong/route/router.gr.dart';
import 'package:feihong/utils/data_sp.dart';
import 'package:feihong/utils/im.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  void _init() async {
    final uid = DataSp.uid;
    final token = DataSp.token;
    if (uid.isEmpty || token.isEmpty) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Global.context!.router.push(const SigninRoute());
      });
    } else {
      await IMUtils.initIM(uid, token);
      Future.delayed(const Duration(milliseconds: 1500), () {
        Global.context!.router.push(const HomeRoute());
      });
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      _init();
      return null;
    }, []);

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
