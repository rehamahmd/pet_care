import 'package:flutter_starter_kit/app/imports.dart';

class ImageWidgetProps {
  final String image;
  final double? width;
  final double? height;
  final Color? color;
  final BorderRadius? borderRadius;
  final BoxFit? boxFit;

  ImageWidgetProps({
    required this.image,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    this.boxFit = BoxFit.fill,
  });
}

class ImageWidget extends StatelessWidget {
  final ImageWidgetProps props;

  const ImageWidget({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: props.borderRadius ?? BorderRadius.circular(0),
      child: SizedBox(
        height: props.height,
        width: props.width,
        child: Image.asset(
          props.image,
          fit: props.boxFit,
          color: props.color,
        ),
      ),
    );
  }
}
