import 'package:flutter_starter_kit/app/imports.dart';

class AnimatedSplashScreen extends HookWidget {
  const AnimatedSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash();
  }
}

class AnimatedSplash extends HookWidget {
  const AnimatedSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(duration: const Duration(seconds: 2));
    final animationScaleController = useAnimationController(duration: const Duration(seconds: 2));

    useEffect(() {
      animationController.forward();
      animationScaleController.forward();
      return null;
    }, []);

    Animation<double> circleOffsetAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationScaleController, curve: Curves.easeInOut),
    );

    return AnimatedBuilder(
      animation: animationScaleController,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Center(child: MyCustomPaintWidget(animationValue: circleOffsetAnimation.value)),
            FadeTransition(
              opacity: animationController,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 15.h, color: Color(0xff9087E3)),
                    shape: BoxShape.circle,
                    color: Color(0xffA39BE7)),
                child: Image.asset(
                  'assets/images/s.png',
                  height: 280.h,
                  matchTextDirection: false,
                ),
              ),
            ),
          ],
        );
      },
    );
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
        colors: [Color(0xffA39BE7), Color.fromARGB(0, 163, 155, 231)],
      ).createShader(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 195.5))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 180.5.w, gradientPaint);

    // Small circles
    paint.shader = null;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(407.5.w, 24.5.h), animationValue * 70.5.h, paint..color = Color(0xffFCE834));
    canvas.drawCircle(Offset(-5.w, 561.h), animationValue * 33.h, paint..color = Color(0xffE15EAE));
    canvas.drawCircle(Offset(66.5.w, 99.5.h), animationValue * 23.5.h, paint..color = Color(0xff6DCDFE));
    canvas.drawCircle(Offset(size.width - 40, 200.823.h), animationValue * 20.5.h, paint..color = Color(0xff9087E3));
    canvas.drawCircle(
        Offset(-1.w, size.height), animationValue * 140.5.h, paint..color = Color.fromARGB(88, 250, 171, 24));
    canvas.drawCircle(Offset(size.width, size.height), animationValue * 44.5.h, paint..color = Color(0xff6DCDFE));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyCustomPaintWidget extends StatelessWidget {
  final double animationValue;

  const MyCustomPaintWidget({super.key, required this.animationValue});

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
