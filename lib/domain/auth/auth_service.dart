import 'package:applover/domain/entities/user_credentials.dart';

abstract class AuthService {
  Future<void> login(UserCredentials userCredentials);
}
