import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceUtils {
  DeviceUtils._();
  static Future<String?> getDeviceId() async {
    String? deviceId;
    var deviceInfo = DeviceInfoPlugin();

    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      deviceId = iosDeviceInfo.identifierForVendor;
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      deviceId = androidDeviceInfo.id;
    }
    return deviceId;
  }
}
