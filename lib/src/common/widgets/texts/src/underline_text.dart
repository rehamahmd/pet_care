import 'package:flutter_starter_kit/app/imports.dart';

class UnderlineText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const UnderlineText(this.text, {super.key, this.textStyle});

  @override
  Widget build(BuildContext context) {
    final style = textStyle ?? AppTextStyle.regular18RoyalBlue.primaryStyle;
    return Text(
      text,
      style: style?.copyWith(
        decoration: TextDecoration.underline,
      ),
    );
  }
}
