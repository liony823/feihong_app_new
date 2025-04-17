import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ValueNotifier<bool> useObscure(bool? initialValue) {
  final obscureText = useState(initialValue ?? true);
  return obscureText;
}
