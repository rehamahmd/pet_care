import 'dart:io';

import 'package:flutter_starter_kit/app/imports.dart';

import '_init.dart';

void main() async {
  AppFlavors.appFlavors = Flavors.dev;
  await Main.init();
  HttpOverrides.global = MyHttpOverrides();
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    Logger.info("$bloc is Created");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    Logger.info("an event Happened in $bloc the event is $event");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Logger.info("There was a transition from ${transition.currentState} to ${transition.nextState}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Logger.trace("Error happened in $bloc with error", error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    Logger.info("$bloc is closed");
  }
}
