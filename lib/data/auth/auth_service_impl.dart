import 'package:applover/data/data_source/api/fake_dio_client.dart';
import 'package:applover/data/data_source/local/applover_secure_storage.dart';
import 'package:applover/data/mapper.dart';
import 'package:applover/domain/auth/auth_service.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final Mapper _mapper;
  final ApploverSecureStorage _storage;
  final FakeDioClient _fakeApiClient;

  AuthServiceImpl(this._mapper, this._storage, this._fakeApiClient);

  @override
  Future<void> login(UserCredentials userCredentials) async {
    //fake api call
    var authToken = await _fakeApiClient
        .login(_mapper.userCredentialsToUserCredentialsDto(userCredentials));
    await _storage.save(authToken);
  }
}
