import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorage {
  SharedPreferencesStorage._();
  static late SharedPreferences sharedPref;

  static init() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  static void setString(String key, String string) {
    sharedPref.setString(key, string);
  }

  static String? getString(String key) {
    return sharedPref.getString(key);
  }

  static void setStringList(String key, List<String> strings) {
    sharedPref.setStringList(key, strings);
  }

  static List<String>? getStringList(String key) {
    return sharedPref.getStringList(key);
  }

  static void setInt(String key, int number) {
    sharedPref.setInt(key, number);
  }

  static int? getInt(String key) {
    return sharedPref.getInt(key);
  }

  static void setBool(String key, bool val) {
    sharedPref.setBool(key, val);
  }

  static bool? getBool(String key) {
    return sharedPref.getBool(key);
  }

  static void setCustomType<T>(String key, T value) {
    String val = value.toString();
    sharedPref.setString(key, val);
  }

  static getCustomType<T>(String key) {
    final value = sharedPref.getString(key);
    return json.decode(value!);
  }

  static void clear(String key) {
    sharedPref.remove(key);
  }

  static void clearAll() {
    sharedPref.clear();
  }
}
