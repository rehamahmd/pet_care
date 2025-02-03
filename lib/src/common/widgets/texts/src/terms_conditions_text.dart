import 'package:flutter_starter_kit/app/imports.dart';

class TermsAndConditionsText extends StatelessWidget {
  final String? text;
  final String url;
  const TermsAndConditionsText({super.key, required this.url, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText.primary(
          text: text ?? '',
          appTextStyle: AppTextStyle.regular16Grey,
        ),
        AppSpace.horizontal(3),
        GestureDetector(
          onTap: () {
            LaunchUrlUtils.launchURL(url: url);
          },
          child: UnderlineText(
            'Agree',
            textStyle: AppTextStyle.regular16RoyalBlue.primaryStyle,
          ),
        ),
      ],
    );
  }
}
