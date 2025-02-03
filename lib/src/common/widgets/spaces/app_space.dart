import 'package:flutter_starter_kit/app/imports.dart';

class AppSpace extends StatelessWidget {
  final double? width;
  final double? height;
  const AppSpace._({this.width, this.height});

  factory AppSpace.horizontal(double? width) {
    return AppSpace._(width: width);
  }
  factory AppSpace.vertical(double? height) {
    return AppSpace._(height: height);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: height?.h,
    );
  }
}
