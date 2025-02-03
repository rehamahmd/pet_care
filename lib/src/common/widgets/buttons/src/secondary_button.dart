import 'package:flutter_starter_kit/app/imports.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? buttonText;
  final SvgIconProps? svgIconProps;

  const SecondaryButton._({
    super.key,
    required this.onPress,
    this.buttonText = '',
    this.svgIconProps,
  });

  factory SecondaryButton.basic({
    String? buttonText,
    required VoidCallback onPress,
  }) {
    return SecondaryButton._(
      buttonText: buttonText,
      onPress: onPress,
    );
  }

  factory SecondaryButton.icon({
    String? buttonText,
    required VoidCallback onPress,
    required SvgIconProps svgIconProps,
  }) {
    return SecondaryButton._(
      buttonText: buttonText,
      onPress: onPress,
      svgIconProps: svgIconProps,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          width: 370.w,
          height: 56.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF4452C8), Color(0xFF693B9E)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF4452C8).withOpacity(.3),
                offset: const Offset(0, 15),
                blurRadius: 7.3,
                spreadRadius: 0,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              foregroundColor: AppColors.primaryColor,
            ),
            child: Container(
              width: 368.w,
              height: 54.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (svgIconProps != null) SvgIcon(props: svgIconProps!),
                  if (svgIconProps != null) AppSpace.horizontal(5),
                  Text(
                    buttonText ?? '',
                    style: AppTextStyle.regular22Royal.primaryStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
