import 'package:applover/domain/auth/auth_service.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  final AuthService _authService;

  LoginUseCase(this._authService);

  Future<void> call(UserCredentials userCredentials) =>
      _authService.login(userCredentials);
}
