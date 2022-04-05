import 'package:equatable/equatable.dart';

class UserCredentials extends Equatable {
  final String email;
  final String password;

  const UserCredentials(
    this.email,
    this.password,
  );

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
