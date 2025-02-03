import 'package:flutter_starter_kit/app/imports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconProps {
  final String svgIcon;
  final double? width;
  final double? height;
  final Color? color;
  final bool matchTextDirection;
  SvgIconProps({
    required this.svgIcon,
    this.height,
    this.width,
    this.color,
    this.matchTextDirection = true,
  });
}

class SvgIcon extends StatelessWidget {
  final SvgIconProps props;
  const SvgIcon({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: props.height ?? 48.h,
      width: props.width ?? 48.h,
      child: SvgPicture.asset(
        props.svgIcon,
        matchTextDirection: props.matchTextDirection,
        // color: props.color ?? Colors.white,
      ),
    );
  }
}
