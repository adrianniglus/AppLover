import 'package:applover/data/auth/auth_service_impl.dart';
import 'package:applover/data/data_source/api/fake_dio_client.dart';
import 'package:applover/data/data_source/local/applover_secure_storage.dart';
import 'package:applover/data/data_transfer_objects/auth_token_dto.dart';
import 'package:applover/data/data_transfer_objects/user_credentials_dto.dart';
import 'package:applover/data/mapper.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'auth_service_test.mocks.dart';

@GenerateMocks([Mapper, FakeDioClient, ApploverSecureStorage])
void main() {
  late MockMapper mapper;
  late MockFakeDioClient apiClient;
  late MockApploverSecureStorage storage;
  late AuthServiceImpl sut;
  late UserCredentials userCredentials;
  late UserCredentialsDto userCredentialsDto;
  late AuthTokenDto token;

  setUp(() {
    mapper = MockMapper();
    apiClient = MockFakeDioClient();
    storage = MockApploverSecureStorage();
    sut = AuthServiceImpl(mapper, storage, apiClient);
    userCredentials = const UserCredentials('email@email.com', 'Admin123');
    userCredentialsDto = UserCredentialsDto(
        email: userCredentials.email, password: userCredentials.password);
    token = AuthTokenDto(token: 'token');
  });

  group('auth', () {
    test('login method test, should call all methods', () async {
      when(mapper.userCredentialsToUserCredentialsDto(userCredentials))
          .thenReturn(userCredentialsDto);
      when(apiClient.login(userCredentialsDto)).thenAnswer((_) async => token);
      await sut.login(userCredentials);
      verify(mapper.userCredentialsToUserCredentialsDto(userCredentials))
          .called(1);
      verify(apiClient.login(userCredentialsDto)).called(1);
      verify(storage.save(token)).called(1);
    });
  });
}
