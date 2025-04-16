import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/config.dart';
import 'package:feihong/controller/auth/signup_provider.dart';
import 'package:feihong/hooks/use_obscure.dart';
import 'package:feihong/widgets/swap_lang_button.dart';
import 'package:feihong/widgets/touch_close_keyboard.dart';
import 'package:feihong/widgets/user_agreement_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class SignupPage extends StatefulHookConsumerWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SignupPage> with TickerProviderStateMixin {
  late TabController _tabController;

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
    final state = ref.watch(signupControllerProvider);
    final controller = ref.watch(signupControllerProvider.notifier);
    final obscure = useObscure(true);
    return TouchCloseSoftKeyboard(
      isGradientBg: true,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: (context.t.c.register.title).appBarText,
            centerTitle: false,
            actions: [SwapLangButton()],
          ),
          body: SingleChildScrollView(
            child: Column(
              spacing: 24.w,
              children: [
                10.verticalSpace,
                _buildForm(context, obscure: obscure),
                UserAgreementCheckbox(
                  isChecked: state.isChecked,
                  onCheck: controller.handleChangeChecked,
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildForm(BuildContext context, {ValueNotifier<bool>? obscure}) {
    final controller = ref.watch(signupControllerProvider.notifier);
    final List<String> tabs = [
      if (Config.appConfig?.loginType == 3 || Config.appConfig?.loginType == 1)
        context.t.c.register.registerWithName,
      if (Config.appConfig?.loginType == 3 || Config.appConfig?.loginType == 2)
        context.t.c.register.registerWithPhone,
    ];
    return FormBuilder(
      key: controller.formKey,
      child: SizedBox(
        height: Config.appConfig?.registerInviteOn == 1 ? 524.h : 420.h,
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
                _buildRegisterWithNameForm(context, obscure: obscure),
              if (Config.appConfig?.loginType == 3 ||
                  Config.appConfig?.loginType == 2)
                _buildRegisterWithPhoneForm(context, obscure: obscure),
            ],
          ))
        ]),
      ),
    );
  }

  Widget _buildRegisterWithNameForm(BuildContext context,
      {ValueNotifier<bool>? obscure}) {
    final state = ref.watch(signupControllerProvider);
    final controller = ref.watch(signupControllerProvider.notifier);
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
                  label: context.t.c.login.nameLabel,
                  icon: EvaIcons.person_outline),
              Input(
                name: 'username',
                placeholder: context.t.c.login.namePlaceholder,
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
                  label: context.t.c.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.c.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.confirmPasswordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'confirmPassword',
                placeholder: context.t.c.register.confirmPasswordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          if (Config.appConfig?.registerInviteOn == 1)
            Column(spacing: 12.w, children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.invitationCode,
                  icon: EvaIcons.email_outline),
              Input(
                name: 'invitationCode',
                placeholder: context.t.c.register.invitationCodePlaceholder,
                keyboardType: TextInputType.text,
              ),
            ]),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                if (state.isChecked) {
                  controller.signup('username');
                } else {
                  Utils.simpleToast(context.t.c.agreement.hint);
                }
              },
              child: Text(context.t.c.register.submit),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterWithPhoneForm(BuildContext context,
      {ValueNotifier<bool>? obscure}) {
    final state = ref.watch(signupControllerProvider);
    final controller = ref.watch(signupControllerProvider.notifier);

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
                  label: context.t.c.login.phoneLabel,
                  icon: EvaIcons.phone_outline),
              Input(
                name: 'phone',
                placeholder: context.t.c.login.phonePlaceholder,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                prefixIcon: InputPhoneCode(
                  onOpenPicker: controller.onOpenZonePicker,
                  areaCode: state.zone,
                ),
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.c.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.confirmPasswordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'confirmPassword',
                placeholder: context.t.c.register.confirmPasswordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          if (Config.appConfig?.registerInviteOn == 1)
            Column(spacing: 12.w, children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.invitationCode,
                  icon: EvaIcons.email_outline),
              Input(
                name: 'inviteCode',
                placeholder: context.t.c.register.invitationCodePlaceholder,
                keyboardType: TextInputType.text,
              ),
            ]),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                if (state.isChecked) {
                  controller.signup('phone');
                } else {
                  Utils.simpleToast(context.t.c.agreement.hint);
                }
              },
              child: Text(context.t.c.register.submit),
            ),
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
}
