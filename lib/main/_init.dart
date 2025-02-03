import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_starter_kit/app/imports.dart';
import 'package:intl/date_symbol_data_local.dart';

class Main {
  static Future<void> init() async {
    Logger.info(AppFlavors.envFilePath);
    await dotenv.load(fileName: AppFlavors.envFilePath);
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    await initializeDateFormatting('en', null);
    SystemUtils.setPreferredOrientations();

    await SharedPreferencesStorage.init();
  }
}
