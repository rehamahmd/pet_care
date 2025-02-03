import 'package:flutter_starter_kit/app/imports.dart';

class AppErrorWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function? onRefresh;
  const AppErrorWidget({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.image,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 240.h,
            child: ImageWidget(
              props: ImageWidgetProps(
                image: image,
              ),
            ),
          ),
          AppSpace.vertical(20),
          AppText.primary(text: title, appTextStyle: AppTextStyle.bold36Royal),
          AppText.primary(text: subtitle, appTextStyle: AppTextStyle.regular24Grey),
          AppSpace.vertical(34),
          if (onRefresh != null)
            PrimaryButton.basic(
              onPress: () => onRefresh!(),
              buttonText: 'Refresh',
            ),
          AppSpace.vertical(50),
        ],
      ),
    );
  }
}
