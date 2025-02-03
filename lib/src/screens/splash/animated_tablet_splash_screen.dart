import 'package:flutter_starter_kit/app/imports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedTabletSplashScreen extends StatelessWidget {
  const AnimatedTabletSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTabletSplash();
  }
}

class AnimatedTabletSplash extends HookWidget {
  @override
  Widget build(BuildContext context) {
    AnimationController _animationController = useAnimationController(duration: Duration(seconds: 2), initialValue: 0);
    _animationController.forward();
    AnimationController _animationScaleController =
        useAnimationController(duration: Duration(seconds: 1), initialValue: 0);
    _animationScaleController.forward();
    Animation<double> circleOffsetAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationScaleController,
      curve: Curves.easeInOut,
    ));

    final animation1 = CurvedAnimation(parent: _animationController, curve: Interval(0.0, 0.5));
    final animation2 = CurvedAnimation(parent: _animationController, curve: Interval(0.5, 1.0));
    final animation3 = CurvedAnimation(parent: _animationController, curve: Interval(0.3, 0.7));
    final animation4 = CurvedAnimation(parent: _animationController, curve: Interval(0.6, 1.0));

    final slideAnimation1 = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0)).animate(animation1);
    final slideAnimation2 = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(animation2);
    final slideAnimation3 = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)).animate(animation3);
    final slideAnimation4 = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(animation4);

    return AnimatedBuilder(
        animation: _animationScaleController,
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Center(child: MyCustomPaintWidget(animationValue: circleOffsetAnimation.value)),
              Positioned(
                right: 10.w,
                top: 10.h,
                child: SlideTransition(
                  position: slideAnimation1,
                  child: FadeTransition(
                    opacity: animation1,
                    child: SvgPicture.asset(AppIcons.pawSvg),
                  ),
                ),
              ),
              FadeTransition(
                opacity: _animationController,
                child: SvgPicture.asset(AppIcons.logoSvg, width: 165.w),
              ),
            ],
          );
        });
  }
}

class MyCustomPainter extends CustomPainter {
  final double animationValue;

  MyCustomPainter({required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Background
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint..color = Colors.white);

    // Main circle
    final gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFD3AAFB), Color(0x7D6595).withOpacity(0)],
      ).createShader(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 195.5.w))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 150.5.w, gradientPaint);

    // Small circles
    paint.shader = null;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(407.5.w, 24.5.h), animationValue * 70.5.h, paint..color = Color(0xFF2FB589));
    canvas.drawCircle(Offset(-15.w, 561.h), animationValue * 55.h, paint..color = Color(0xFF632B9A));
    canvas.drawCircle(Offset(32.5.w, 43.5.h), animationValue * 13.5.h, paint..color = Color(0xFF642C9B));
    canvas.drawCircle(Offset(140.142.w, 780.823.h), animationValue * 20.5.h, paint..color = Color(0xFF4452C8));
    canvas.drawCircle(Offset(70.w, 640.h), animationValue * 26.h, paint..color = Color(0xFFA73D9A));
    canvas.drawCircle(Offset(size.width, size.height), animationValue * 64.5.h, paint..color = Color(0xffE78F44));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyCustomPaintWidget extends StatelessWidget {
  final double animationValue;

  MyCustomPaintWidget({required this.animationValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height,
          ),
          painter: MyCustomPainter(animationValue: animationValue),
        ),
      ),
    );
  }
}
