import 'package:applover/data/data_source/api/fake_dio_client.dart';
import 'package:applover/data/data_source/local/flickit_secure_storage.dart';
import 'package:applover/data/mapper.dart';
import 'package:applover/domain/auth/auth_service.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final Mapper _mapper;
  final FlickitSecureStorage _storage;
  final FakeDioClient _fakeApiClient;

  AuthServiceImpl(this._mapper, this._storage, this._fakeApiClient);

  @override
  Future<void> login(UserCredentials userCredentials) async {
    final userCredentialsDto =
        _mapper.userCredentialsToUserCredentialsDto(userCredentials);
    //fake api call
    var authToken = await _fakeApiClient.login(userCredentials);
    await _storage.save(authToken);
  }
}
