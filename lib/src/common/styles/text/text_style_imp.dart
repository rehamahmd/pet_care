import 'package:flutter_starter_kit/app/imports.dart';

class TextStyleImp {
  static Map<AppTextStyle, TextStyle> textStyleImp = {
    AppTextStyle.bold10: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold10Royal: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    ),
    AppTextStyle.bold10Black: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    AppTextStyle.bold10Grey: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    AppTextStyle.bold14: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold14Black: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    AppTextStyle.bold16: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold16Royal: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    ),

    AppTextStyle.bold18: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold18Black: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    AppTextStyle.bold20Royal: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    ),
    AppTextStyle.bold22White: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteForeground,
    ),

    AppTextStyle.bold30: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold30Royal: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    ),

    AppTextStyle.bold36: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
    ),
    AppTextStyle.bold36Royal: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor,
    ),
    AppTextStyle.bold36White: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteForeground,
    ),
    AppTextStyle.bold55: TextStyle(
      fontSize: 55.sp,
      fontWeight: FontWeight.bold,
    ),

    AppTextStyle.bold55White: TextStyle(
      fontSize: 55.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteForeground,
    ),

    // ** ---------- Regular
    AppTextStyle.regular10: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
    ),
    AppTextStyle.regular10Royal: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryColor,
    ),
    AppTextStyle.regular10Black: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    AppTextStyle.regular10Grey: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ),
    AppTextStyle.regular12: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
    ),
    AppTextStyle.regular12Black: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    AppTextStyle.regular12Grey: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ),
    AppTextStyle.regular14Grey: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ),
    AppTextStyle.regular14White: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

    AppTextStyle.regular16: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    ),
    AppTextStyle.regular16Grey: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.tertiaryTextColor,
      height: 1.4,
    ),

    AppTextStyle.regular16Royal: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryTextColor,
    ),
    AppTextStyle.regular16RoyalBlue: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.secondaryColor,
    ),
    AppTextStyle.regular18Gray: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.tertiaryTextColor,
    ),
    AppTextStyle.regular18Black: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    AppTextStyle.regular18Royal: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryColor,
    ),
    AppTextStyle.regular18RoyalBlue: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.secondaryColor,
    ),
    AppTextStyle.regular18White: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteForeground,
    ),
    AppTextStyle.regular20Grey: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.tertiaryTextColor,
    ),
    AppTextStyle.regular20Royal: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryTextColor,
    ),

    AppTextStyle.regular22White: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    AppTextStyle.regular22Royal: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryColor,
    ),
    AppTextStyle.regular22Grey: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.tertiaryTextColor,
    ),
    AppTextStyle.regular22Black: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),

    AppTextStyle.regular24: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryColor,
    ),
    AppTextStyle.regular24Grey: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.tertiaryTextColor,
    ),
    AppTextStyle.regular28: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.normal,
    ),
    AppTextStyle.regular28Royal: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.primaryTextColor,
    ),
    AppTextStyle.regular28White: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteForeground,
    ),
    AppTextStyle.regular38: TextStyle(
      fontSize: 38.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteForeground,
    ),
    AppTextStyle.regular38White: TextStyle(
      fontSize: 38.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteForeground,
    ),
    AppTextStyle.regular55White: TextStyle(
      fontSize: 55.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.whiteForeground,
    ),
  };
}
