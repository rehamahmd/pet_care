import 'package:flutter_starter_kit/app/imports.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/loading.png", width: 200.w),
          AppSpace.vertical(20),
          AppText.primary(text: 'Loading....', appTextStyle: AppTextStyle.bold36Royal),
        ],
      ),
    );
  }
}
