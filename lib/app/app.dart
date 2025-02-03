import 'package:flutter_starter_kit/app/imports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    String language = 'en';
    return ScreenUtilInit(
      designSize: const Size(428, 900),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: appTheme,
          routerDelegate: AppRoute.router.routerDelegate,
          routeInformationParser: AppRoute.router.routeInformationParser,
          routeInformationProvider: AppRoute.router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          locale: Locale(language),
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
          },
        );
      },
    );
  }
}
