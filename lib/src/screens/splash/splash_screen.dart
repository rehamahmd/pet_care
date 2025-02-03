import 'package:flutter_starter_kit/app/imports.dart';

import 'animated_tablet_splash_screen.dart';
import 'animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3)).then((value) {
        if (!mounted) return;
        // Navigation.to(
        //   context,
        //   Routes.homeScreen,
        //   navigationType: NavigateType.goNamed,
        // );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemUtils.setAppStatusBarThemeForAndroid(splash: true);
    return Scaffold(body: context.responsive(const AnimatedSplashScreen(), md: const AnimatedTabletSplashScreen()));
  }
}
