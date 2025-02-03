import 'package:flutter_starter_kit/app/imports.dart';

class FullScreenLoading extends ModalRoute {
  Color loadingColor;
  FullScreenLoading({this.loadingColor = const Color(0xff632B9A)});
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => const Color(0xff19161A).withOpacity(0.4);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return PopScope(
      onPopInvoked: (v) => true, // false
      child: const Material(
        type: MaterialType.transparency,
      ),
    );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 55.w,
                height: 55.w,
                child: CircularProgressIndicator(
                  color: AppColors.whiteForeground,
                  strokeWidth: 4.w,
                ),
              ),
              CircularProgressIndicator() // TODO
            ],
          ),
        ));
  }
}
