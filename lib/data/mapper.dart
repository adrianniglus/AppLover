import 'package:applover/data/data_transfer_objects/user_credentials_dto.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:injectable/injectable.dart';

@singleton
class Mapper {
  UserCredentialsDto userCredentialsToUserCredentialsDto(
          UserCredentials userCredentials) =>
      UserCredentialsDto(
        email: userCredentials.email,
        password: userCredentials.password,
      );

}
