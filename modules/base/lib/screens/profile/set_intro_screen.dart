import 'package:auto_route/auto_route.dart';
import 'package:base/providers/profile/set_intro_provider.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SetIntroScreen extends HookConsumerWidget {
  final String intro;
  const SetIntroScreen({super.key, required this.intro});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctrlController = useTextEditingController();
    final hasText = useState(false);
    final controller =
        ref.read(setIntroControllerProvider(intro: intro).notifier);
    final state = ref.watch(setIntroControllerProvider(intro: intro));

    useEffect(() {
      ctrlController.addListener(() {
        hasText.value = ctrlController.text.isNotEmpty;
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.w,
        title: context.t.c.profile.introduction.appBarText,
        leadingWidth: 108.w,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.w),
          child: GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: Text(context.t.c.cancel)
                .textColor(AppTheme.lightTextColor)
                .fontSize(16.sp),
          ),
        ),
        actions: [
          Container(
            height: 32.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: FilledButton(
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.w),
                ),
                minimumSize: Size(48.w, 32.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 0.w,
                ),
              ),
              onPressed: () => controller.submit(ctrlController.text),
              child: Text(context.t.c.save),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.primaryLightColor,
              border: Border(
                top: BorderSide(
                  color: AppTheme.dividerColor2,
                ),
                bottom: BorderSide(
                  color: AppTheme.dividerColor2,
                ),
              ),
            ),
            child: TextField(
              controller: ctrlController,
              autofocus: true,
              onSubmitted: (value) => controller.submit(value),
              maxLines: 3,
              maxLength: 200,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppTheme.primaryLightColor,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.w,
                  ),
                  border: InputBorder.none,
                  hintText: state.intro.isEmpty
                      ? context.t.c.profile.plsEnterIntroduction
                      : state.intro,
                  suffixIcon: Visibility(
                    visible: hasText.value,
                    child: IconButton(
                      onPressed: () {
                        ctrlController.clear();
                      },
                      icon: Icon(
                        Icons.close,
                        color: AppTheme.lightSecondaryTextColor,
                        size: 20.w,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
