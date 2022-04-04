import 'package:equatable/equatable.dart';

class UserCredentials extends Equatable {
  final String value;
  final String password;

  const UserCredentials(
    this.value,
    this.password,
  );

  @override
  List<Object?> get props => [
        value,
        password,
      ];
}
