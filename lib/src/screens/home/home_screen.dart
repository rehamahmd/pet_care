import 'package:flutter_starter_kit/app/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[AppColors.primaryColor, AppColors.secondaryColor]),
      ),
      child: Scaffold(
          // appBar: MainAppBar(
          //   props: MainAppBarProps(
          //     screenTitle: 'Pawtopia',
          //     titleWidget: ImageWidget(
          //       props: ImageWidgetProps(
          //         image: AppFlavors.logoPath,
          //         height: 45.h,
          //       ),
          //     ),
          //     showBackArrow: false,
          //   ),
          // ),
          body: Container(
        color: Color(0xff9087E3),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       transform: GradientRotation(35),
        //       colors: <Color>[AppColors.primaryColor, AppColors.primaryColor]),
        // ),
        child: Center(
            child: AppText.primary(
          text: 'PawTopia',
          appTextStyle: AppTextStyle.bold36White,
        )),
      )),
    );
  }
}
