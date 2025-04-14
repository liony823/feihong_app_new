import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/config.dart';
import 'package:feihong/controller/auth/signin_provier.dart';
import 'package:feihong/hooks/use_obscure.dart';
import 'package:feihong/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class SigninPage extends StatefulHookConsumerWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SigninPage> with TickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    if (Config.appConfig?.loginType == 3) {
      _tabController = TabController(length: 2, vsync: this);
    } else {
      _tabController = TabController(length: 1, vsync: this);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signinControllerProvider);
    final controller = ref.watch(signinControllerProvider.notifier);
    final obscure = useObscure(true);
    return Material(
      color: Colors.transparent,
      child: TouchCloseSoftKeyboard(
          isGradientBg: true,
          child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SwapLangButton(),
                ),
                ImageRes.logo.toImage
                  ..width = 64.w
                  ..height = 64.h,
                16.verticalSpace,
                Text(context.t.welcome)
                    .fontSize(18.sp)
                    .textColor(Styles.brandColor)
                    .fontWeight(FontWeight.w500),
                52.verticalSpace,
                _buildForm(context, obscure: obscure),
                UserAgreementCheckbox(
                  isChecked: state.isChecked,
                  onCheck: controller.handleChangeChecked,
                ),
              ],
            )),
          )),
    );
  }

  Widget _buildForm(BuildContext context, {ValueNotifier<bool>? obscure}) {
    final List<String> tabs = [
      if (Config.appConfig?.loginType == 3 || Config.appConfig?.loginType == 1)
        context.t.login.loginWithName,
      if (Config.appConfig?.loginType == 3 || Config.appConfig?.loginType == 2)
        context.t.login.loginWithPhone,
    ];
    return FormBuilder(
      key: _formKey,
      child: SizedBox(
        height: 446.h,
        child: Column(spacing: 24.w, children: [
          LoginTabBar(
            controller: _tabController,
            tabs: tabs,
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              if (Config.appConfig?.loginType == 3 ||
                  Config.appConfig?.loginType == 1)
                _buildLoginWithUserForm(context, obscure: obscure),
              if (Config.appConfig?.loginType == 3 ||
                  Config.appConfig?.loginType == 2)
                _buildLoginWithPhoneForm(context, obscure: obscure),
            ],
          ))
        ]),
      ),
    );
  }

  Widget _buildLoginWithUserForm(BuildContext context,
      {ValueNotifier<bool>? obscure}) {
    final state = ref.watch(signinControllerProvider);
    final controller = ref.watch(signinControllerProvider.notifier);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        spacing: 24.h,
        children: [
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.login.nameLabel,
                  icon: EvaIcons.person_outline),
              Input(
                name: 'username',
                placeholder: context.t.login.namePlaceholder,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: state.isChecked ? controller.signin : null,
                  child: Text(context.t.login.submit),
                ),
              ),
              _buildFormBottomView(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLoginWithPhoneForm(BuildContext context,
      {ValueNotifier<bool>? obscure}) {
    final state = ref.watch(signinControllerProvider);
    final controller = ref.watch(signinControllerProvider.notifier);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        spacing: 24.h,
        children: [
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.login.phoneLabel,
                  icon: EvaIcons.phone_outline),
              Input(
                name: 'phone',
                placeholder: context.t.login.phonePlaceholder,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: state.isChecked ? controller.signin : null,
                  child: Text(context.t.login.submit),
                ),
              ),
              _buildFormBottomView(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFormLabelView(BuildContext context,
      {required String label, required IconData icon}) {
    return Row(
      spacing: 6.w,
      children: [
        Text(label).fontSize(14.sp).textColor(Styles.neutral900),
        Icon(
          icon,
          size: 16.w,
          color: Styles.neutral900,
        )
      ],
    );
  }

  /// 忘记密码和立即注册
  Widget _buildFormBottomView(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(context.t.login.forgotPassword)
              .fontSize(12.sp)
              .textColor(Styles.neutral600),
        ),
        TextButton(
          onPressed: () {},
          child: Text(context.t.login.noAccountYet)
              .fontSize(12.sp)
              .textColor(Styles.deepBlueColor),
        ),
      ],
    );
  }
}
