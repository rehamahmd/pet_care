import 'package:flutter_starter_kit/app/imports.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(color: Colors.white),
  iconTheme: IconThemeData(color: AppColors.primaryTextColor, size: 16.h),
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    onSurface: Colors.black,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: AppTextStyle.regular18Gray.primaryStyle,
    hintStyle: AppTextStyle.regular14Grey.primaryStyle,
    errorStyle: AppTextStyle.regular12.secondaryStyle?.copyWith(color: Colors.red, height: 0),
    errorMaxLines: 1,
    fillColor: Colors.transparent,
    filled: true,
    isDense: true,
    contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: const OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: AppColors.inputBorderColors, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: AppColors.inputBorderColors, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: .5, color: Colors.red, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: .5, color: Colors.red, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
);
