import 'package:applover/data/data_transfer_objects/auth_token_dto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const tokenKey = 'token';

@singleton
class ApploverSecureStorage {
  final _storage = const FlutterSecureStorage();

  Future<void> save(AuthTokenDto authToken) async {
    _storage.write(key: tokenKey, value: authToken.token);
  }

  Future<void> deleteToken() async => await _storage.delete(key: tokenKey);

  Future<String?> getToken() async => _storage.read(key: tokenKey);
}
