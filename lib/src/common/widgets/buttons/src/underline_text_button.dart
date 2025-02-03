import 'package:flutter_starter_kit/app/imports.dart';

class UnderlineTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final void Function()? onPress;
  final bool isLoading;
  const UnderlineTextButton(
    this.text, {
    super.key,
    this.textStyle,
    this.onPress,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = textStyle ?? AppTextStyle.regular18RoyalBlue.primaryStyle;
    return TextButton(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: style?.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
          if (isLoading) AppSpace.horizontal(8),
          if (isLoading)
            SizedBox(
              width: 15.w,
              height: 15.w,
              child: CircularProgressIndicator(
                color: AppColors.secondaryColor,
                strokeWidth: 2.w,
              ),
            )
        ],
      ),
    );
  }
}
