import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  SecureStorageHelper._();

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  /// Save value securely
  static Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  /// Read value
  static Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  /// Delete a value
  static Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  /// Clear all secure storage
  static Future<void> clear() async {
    await _storage.deleteAll();
  }

  /// Check if key exists
  static Future<bool> contains(String key) async {
    final value = await read(key);
    return value != null;
  }
}
