// import 'package:flutter_starter_kit/app/imports.dart';

// class ServerErrorWidget extends StatelessWidget {
//   const ServerErrorWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Column(
//             children: [
//               AppSpace.vertical(50),
//               SizedBox(
//                 height: 240.h,
//                 child: ImageWidget(
//                   props: ImageWidgetProps(image: AppIcons.serverErrorPng),
//                 ),
//               ),
//               AppSpace.vertical(34),
//               AppText.primary(text: 'تعذر الوصول للصحفة', appTextStyle: AppTextStyle.bold36Royal),
//               AppText.primary(text: 'برجاء إعادة تحميل الصفحة', appTextStyle: AppTextStyle.regular24Grey),
//             ],
//           ),
//           PrimaryButton.icon(
//             onPress: () {},
//             svgIconProps: SvgIconProps(svgIcon: AppIcons.refreshIcon),
//             buttonText: 'إعادة تحميل الصفحة',
//           )
//         ],
//       ),
//     );
//   }
// }
