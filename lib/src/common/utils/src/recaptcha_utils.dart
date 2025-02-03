import 'dart:io';
import 'package:recaptcha_enterprise_flutter/recaptcha.dart';
import 'package:recaptcha_enterprise_flutter/recaptcha_action.dart';
import 'package:recaptcha_enterprise_flutter/recaptcha_client.dart';

class RecaptchaUtils {
  RecaptchaUtils._();

  static RecaptchaClient? recaptchaClient;
  static Future<String?> getRecaptcha(RecaptchaAction action) async {
    await initClient();
    return execute(action);
  }

  static Future<void> initClient() async {
    // TODO: ADD KEYS
    const androidKey = "";
    const iosKey = "";
    recaptchaClient = null;
    String siteKey = Platform.isAndroid ? androidKey : iosKey;
    try {
      recaptchaClient = await Recaptcha.fetchClient(siteKey);
    } catch (error) {}
  }

  static Future<String?> execute(RecaptchaAction action) async {
    if (recaptchaClient == null) return null;
    String? result;
    try {
      result = await recaptchaClient!.execute(RecaptchaAction.SIGNUP());
    } catch (error) {}

    return result;
  }
}
