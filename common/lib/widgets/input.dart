import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// 输入框
class Input extends StatefulWidget {
  final String value;
  final String name;
  final TextInputType? keyboardType;
  final bool password;
  final String placeholder;
  final bool disabled;
  final TextAlign textAlign;
  final int? maxLength;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final bool clear;
  final EdgeInsetsGeometry? clearPadding;
  final TextStyle? style;
  final TextStyle? placeholderStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onBlur;
  final ValueChanged<String>? onFocus;
  final ValueChanged<double>? keyboardHeightChange;
  final bool throttle;
  final int throttleTime;

  /// 输入框
  /// ```
  /// [value] 输入框的初始内容
  /// [type] input 的类型
  /// [password] 是否是密码类型
  /// [placeholder] 输入框为空时占位符
  /// [disabled] 是否禁用
  /// [textAlign] 输入文本靠哪边
  /// [maxLength] 最大输入长度
  /// [autofocus] 自动聚焦
  /// [confirmType] 设置键盘右下角按钮的文字
  /// [clear] 是否展示清除图标
  /// [style] 指定 value 的样式
  /// [placeholderStyle] 指定 placeholder 的样式
  /// [onChanged] 键盘输入时触发
  /// [onSubmitted] 点击完成按钮时触发
  /// [onFocus] 输入框聚焦时触发
  /// [onBlur] 输入框失去焦点时触发
  /// [keyboardHeightChange] 键盘高度发生变化的时候触发此事件
  /// [throttle] 是否开启节流
  /// [throttleTime] 节流时间
  /// ```
  const Input({
    super.key,
    required this.name,
    this.value = "",
    this.keyboardType = TextInputType.text,
    this.password = false,
    required this.placeholder,
    this.disabled = false,
    this.maxLength = 50,
    this.textAlign = TextAlign.left,
    this.autofocus = false,
    this.textInputAction = TextInputAction.done,
    this.clear = false,
    this.clearPadding = const EdgeInsets.fromLTRB(6, 0, 15, 0),
    this.style = const TextStyle(
      color: Styles.neutral900,
      fontSize: 15,
      height: 1.2,
    ),
    this.placeholderStyle = const TextStyle(
      color: Styles.neutral500,
      fontSize: 15,
      height: 1.2,
    ),
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.onSubmitted,
    this.onBlur,
    this.onFocus,
    this.keyboardHeightChange,
    this.throttle = false,
    this.throttleTime = 500,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Timer? _timer;
  final TextEditingController _controller = TextEditingController(text: "");
  final FocusNode _focusNode = FocusNode();

  double keyboardHeight = 0;

  @override
  void initState() {
    super.initState();
    initValue();
    _focusNode.addListener(() {
      final inputValue = _controller.text;
      if (_focusNode.hasFocus) {
        if (widget.keyboardHeightChange != null) {
          widget.keyboardHeightChange!(
            MediaQuery.of(context).viewInsets.bottom,
          );
        }
        if (widget.onFocus != null) {
          widget.onFocus!(inputValue);
        }
      }
      if (!_focusNode.hasFocus) {
        if (widget.keyboardHeightChange != null) {
          widget.keyboardHeightChange!(0);
        }
        if (widget.onBlur != null) {
          widget.onBlur!(inputValue);
        }
      }
    });
  }

  void initValue() {
    _controller.text = widget.value;
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: widget.value.length),
    );
  }

  /// 键盘输入时触发
  void onChanged(String? value) {
    if (widget.onChanged != null) {
      if (widget.throttle) {
        _timer = Timer(Duration(milliseconds: widget.throttleTime), () {
          widget.onChanged!(value);
        });
      } else {
        widget.onChanged!(value);
      }
    }
  }

  /// 点击完成按钮时触发
  void onSubmitted(value) {
    if (widget.onSubmitted != null) {
      widget.onSubmitted!(value);
    }
  }

  /// 清除
  void clearTap() {
    if (widget.onChanged != null) {
      widget.onChanged!("");
    }
    _controller.clear();
  }

  @override
  void didUpdateWidget(covariant Input oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      initValue();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  OutlineInputBorder get _border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(24.w),
    borderSide: BorderSide(color: Styles.inputBgDefault),
  );

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      controller: _controller,
      focusNode: _focusNode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      enabled: !widget.disabled,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      autofocus: widget.autofocus,
      obscureText: widget.password,
      style: widget.style,
      cursorColor: Styles.brandColor,
      textAlign: widget.textAlign,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.placeholder,
        counterText: "",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
        hintStyle: widget.placeholderStyle,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        filled: true,
        fillColor: Styles.inputBgDefault,
        enabledBorder: _border,
        focusedBorder: _border,
        focusedErrorBorder: _border,
        errorBorder: _border,
        disabledBorder: _border,
      ),
      validator: widget.validator,
    );
  }
}
