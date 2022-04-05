import 'dart:developer' as logg;
import 'dart:math';

import 'package:applover/data/data_transfer_objects/auth_token_dto.dart';
import 'package:applover/data/data_transfer_objects/user_credentials_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class FakeDioClient {
  
  Future<AuthTokenDto> login(UserCredentialsDto userCredentials) async {
    await Future.delayed(const Duration(seconds: 2));
    final random = Random().nextInt(100);
    if (random > 50) {
      throw Exception();
    }
    logg.log('Fake API login successfull');
    return AuthTokenDto(
      token:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJlYXNlckVnZyI6Ikdvb2QgbW9ybmluZyByZWNydWl0ZXIhIn0.kAZRdAn1sjG2DJR3Nc5CRtVK3xO25qwjPSojlwEpp2g',
    );
  }
}
