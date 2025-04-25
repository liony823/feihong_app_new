import 'package:common/common.dart';
import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final int gender;
  final double? size;
  final Color? color;
  const GenderIcon({super.key, required this.gender, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    final gColor = color ?? (gender == 1 ? AppTheme.infoColor : Color(0xFFFB807F));
    return Icon(
      gender == 1 ?  Icons.male_outlined : Icons.female_outlined,
      size: size,
      color: gColor,
    );
  }
}