import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static SecureStorage? _instance;
  final _storage = const FlutterSecureStorage();

  static SecureStorage getInstance() {
    return _instance ??= SecureStorage();
  }

  Future<void> setValue(key, String? value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> getValue(key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteValue(key) async {
    return await _storage.delete(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
