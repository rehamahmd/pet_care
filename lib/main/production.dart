import 'package:flutter_starter_kit/app/imports.dart';

import '_init.dart';

void main() async {
  AppFlavors.appFlavors = Flavors.production;
  await Main.init();

  runApp(const App());
}
