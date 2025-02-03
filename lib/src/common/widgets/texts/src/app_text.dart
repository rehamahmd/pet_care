// * Primary & Secondary based on FontFamily  * //

import 'package:flutter_starter_kit/app/imports.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const AppText._(
    this.text, {
    this.textStyle,
  });

  factory AppText.primary({
    required String text,
    final AppTextStyle? appTextStyle,
    final double? lineHeight,
    final TextStyle? style,
  }) {
    return AppText._(
      text,
      textStyle: style ?? appTextStyle?.primaryStyle?.copyWith(height: lineHeight),
    );
  }
  factory AppText.secondary({
    required String text,
    final AppTextStyle? appTextStyle,
    final double? lineHeight,
    final TextStyle? style,
  }) {
    return AppText._(
      text,
      textStyle: style ?? appTextStyle?.secondaryStyle?.copyWith(height: lineHeight),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
