import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:feihong/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'style.dart';

class AppTheme {
  static const String fontFamily = 'NotoSansSC';
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.light,
      primaryColor: Styles.brandColor,
      scaffoldBackgroundColor: Styles.backgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Styles.backgroundColor,
        elevation: 10,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Styles.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Styles.primaryDark),
      ),
      dividerTheme: DividerThemeData(
        color: Styles.neutral200,
        thickness: 1.h,
        indent: 16.w,
        endIndent: 16.w,
        space: 0.w,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Styles.primaryDark,
        selectionColor: Styles.brandColor.withValues(alpha: .3),
        selectionHandleColor: Styles.brandColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        hintStyle: TextStyle(
          color: Styles.neutral400,
          fontSize: 14.sp,
        ),
        labelStyle: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
        ),
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderDefault, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderFocus, width: 2)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderError, width: 2)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderError, width: 2)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: Styles.inputBorderDisabled, width: 2)),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return Styles.fillButtonDefaultBg.withValues(alpha: .4);
            } else if (states.contains(WidgetState.pressed)) {
              return Styles.fillButtonPressedBg;
            } else if (states.contains(WidgetState.hovered)) {
              return Styles.fillButtonDefaultBg.withValues(alpha: .8);
            } else if (states.contains(WidgetState.focused)) {
              return Styles.fillButtonDefaultBg;
            }
            return Styles.fillButtonDefaultBg;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return Styles.primaryDark.withValues(alpha: .5);
            } else if (states.contains(WidgetState.pressed)) {
              return Styles.primaryLight;
            }
            return Styles.primaryDark;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: Styles.fillButtonDefaultSide, width: 2),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.all(
              Styles.fillButtonPressedBg.withValues(alpha: .3)),
          shadowColor: WidgetStateProperty.all(Styles.fillButtonPressedBg),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          side: BorderSide(color: Styles.primaryDark, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: Styles.outlinedButtonDefaultBg,
          overlayColor: Styles.outlinedButtonPressedBg,
          disabledBackgroundColor: Styles.outlinedButtonDisabledBg,
          foregroundColor: Styles.neutral900,
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Styles.textButtonDefault,
          foregroundColor: Styles.neutral900,
          disabledBackgroundColor: Styles.textButtonDisabled,
          overlayColor: Styles.textButtonPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: Styles.neutral500, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.r),
        ),
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.primaryDark;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.backgroundColor;
        }),
        checkColor: WidgetStateProperty.all(Styles.backgroundColor),
        overlayColor:
            WidgetStateProperty.all(Styles.primaryDark.withValues(alpha: .2)),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Styles.primaryDark,
        circularTrackColor: Styles.neutral500.withValues(alpha: .8),
        strokeCap: StrokeCap.round,
        strokeWidth: 4.w,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Styles.primaryDark,
        inactiveTrackColor: Styles.neutral300,
        thumbColor: Colors.white,
        overlayColor: Styles.primaryDark.withValues(alpha: .2),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 4.r),
        trackHeight: 3.h,
        trackGap: 2.w,
        thumbShape: RoundedRectangleSliderThumbShape(
          enabledThumbRadius: 14.r,
          borderRadius: BorderRadius.circular(4.r),
        ),
        rangeThumbShape: RoundedRectangleRangeSliderThumbShape(
          enabledThumbRadius: 14.r,
          borderRadius: BorderRadius.circular(6.r),
        ),
        trackShape: RectangularSliderTrackShape(),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.neutral300;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.neutral300;
        }),
        thumbColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.primaryLight;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.primaryLight;
        }),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 28.sp,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.dark,
      primaryColor: Styles.brandColor,
      scaffoldBackgroundColor: Styles.backgroundColorDark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Styles.backgroundColorDark,
        elevation: 10,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Styles.backgroundColorDark,
        elevation: 0,
        iconTheme: IconThemeData(color: Styles.primaryDark),
      ),
      dividerTheme: DividerThemeData(
        color: Styles.neutral200,
        thickness: 1.h,
        indent: 16.w,
        endIndent: 16.w,
        space: 0.w,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Styles.primaryDark,
        selectionColor: Styles.brandColor.withValues(alpha: .3),
        selectionHandleColor: Styles.brandColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        hintStyle: TextStyle(
          color: Styles.neutral400,
          fontSize: 14.sp,
        ),
        labelStyle: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
        ),
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderDefault, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderFocus, width: 2)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderError, width: 2)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Styles.inputBorderError, width: 2)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: Styles.inputBorderDisabled, width: 2)),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return Styles.fillButtonDefaultBg.withValues(alpha: .4);
            } else if (states.contains(WidgetState.pressed)) {
              return Styles.fillButtonPressedBg;
            } else if (states.contains(WidgetState.hovered)) {
              return Styles.fillButtonDefaultBg.withValues(alpha: .8);
            } else if (states.contains(WidgetState.focused)) {
              return Styles.fillButtonDefaultBg;
            }
            return Styles.fillButtonDefaultBg;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return Styles.primaryDark.withValues(alpha: .5);
            } else if (states.contains(WidgetState.pressed)) {
              return Styles.primaryLight;
            }
            return Styles.primaryDark;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: Styles.fillButtonDefaultSide, width: 2),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.all(
              Styles.fillButtonPressedBg.withValues(alpha: .3)),
          shadowColor: WidgetStateProperty.all(Styles.fillButtonPressedBg),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          side: BorderSide(color: Styles.primaryDark, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: Styles.outlinedButtonDefaultBg,
          overlayColor: Styles.outlinedButtonPressedBg,
          disabledBackgroundColor: Styles.outlinedButtonDisabledBg,
          foregroundColor: Styles.neutral900,
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Styles.textButtonDefault,
          foregroundColor: Styles.neutral900,
          disabledBackgroundColor: Styles.textButtonDisabled,
          overlayColor: Styles.textButtonPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: Styles.neutral500, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.r),
        ),
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.primaryDark;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.backgroundColor;
        }),
        checkColor: WidgetStateProperty.all(Styles.backgroundColor),
        overlayColor:
            WidgetStateProperty.all(Styles.primaryDark.withValues(alpha: .2)),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Styles.primaryDark,
        circularTrackColor: Styles.neutral500.withValues(alpha: .8),
        strokeCap: StrokeCap.round,
        strokeWidth: 4.w,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Styles.primaryDark,
        inactiveTrackColor: Styles.neutral300,
        thumbColor: Colors.white,
        overlayColor: Styles.primaryDark.withValues(alpha: .2),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 4.r),
        trackHeight: 3.h,
        trackGap: 2.w,
        thumbShape: RoundedRectangleSliderThumbShape(
          enabledThumbRadius: 14.r,
          borderRadius: BorderRadius.circular(4.r),
        ),
        rangeThumbShape: RoundedRectangleRangeSliderThumbShape(
          enabledThumbRadius: 14.r,
          borderRadius: BorderRadius.circular(6.r),
        ),
        trackShape: RectangularSliderTrackShape(),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.neutral300;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.neutral300;
        }),
        thumbColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return Styles.primaryLight;
          }
          if (state.contains(WidgetState.disabled)) {
            return Styles.neutral500;
          }
          return Styles.primaryLight;
        }),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: Styles.neutral900,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: Styles.neutral900,
          fontSize: 28.sp,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: Styles.neutral900,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
