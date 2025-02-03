import 'package:go_router/go_router.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class AppRoute {
  AppRoute._();
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.homeScreen,
        name: Routes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      // GoRoute(
      //   path: "/${Routes.weatherScreen}:day",
      //   name: Routes.weatherScreen,
      //   builder: (context, state) => WeatherScreen(day: state.pathParameters['day']),
      // ),
    ],
    redirect: (context, state) {
      return null;
    },
  );
}

class Routes {
  static const splashScreen = '/';
  static const notFoundScreen = '/notFound';
  static const homeScreen = '/homeScreen';
  static const weatherScreen = '/weatherScreen';
}
