import 'package:flutter_starter_kit/app/imports.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? buttonText;
  final SvgIconProps? svgIconProps;
  final bool isLoading;
  final bool disabled;

  const PrimaryButton._({
    required this.onPress,
    this.buttonText = '',
    this.svgIconProps,
    this.isLoading = false,
    this.disabled = false,
  });

  factory PrimaryButton.basic({
    String? buttonText,
    required VoidCallback onPress,
    bool isLoading = false,
    bool disabled = false,
  }) {
    return PrimaryButton._(
      buttonText: buttonText,
      onPress: onPress,
      isLoading: isLoading,
      disabled: disabled,
    );
  }

  factory PrimaryButton.icon({
    String? buttonText,
    required VoidCallback onPress,
    required SvgIconProps svgIconProps,
    bool isLoading = false,
    bool disabled = false,
  }) {
    return PrimaryButton._(
      buttonText: buttonText,
      onPress: onPress,
      svgIconProps: svgIconProps,
      isLoading: isLoading,
      disabled: disabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          width: 300.w,
          height: 56.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: disabled ? [Colors.grey, Colors.white] : [const Color(0xFF8F7DC2), const Color(0xFF03B7F2)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(8.h),
            boxShadow: isLoading || disabled
                ? null
                : [
                    BoxShadow(
                      color: const Color(0xFF4452C8).withOpacity(.3),
                      offset: const Offset(0, 15),
                      blurRadius: 7.3,
                      spreadRadius: 0,
                    ),
                  ],
          ),
          child: ElevatedButton(
            onPressed: isLoading || disabled ? null : onPress,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              foregroundColor: const Color.fromARGB(255, 178, 179, 183),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (svgIconProps != null) SvgIcon(props: svgIconProps!),
                Text(
                  buttonText ?? '',
                  style: AppTextStyle.regular22White.primaryStyle,
                ),
                if (isLoading) AppSpace.horizontal(8),
                if (isLoading) LoadingState(isLoading: isLoading),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingState extends HookWidget {
  final bool isLoading;
  const LoadingState({super.key, this.isLoading = true});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    final fadeTransition = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    useEffect(() {
      if (isLoading) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
      return;
    }, [isLoading]);
    return FadeTransition(
      opacity: fadeTransition,
      child: isLoading
          ? SizedBox(
              width: 25.w,
              height: 25.w,
              child: CircularProgressIndicator(
                color: AppColors.whiteForeground,
                strokeWidth: 2.w,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
