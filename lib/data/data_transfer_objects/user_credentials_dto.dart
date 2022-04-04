import 'package:json_annotation/json_annotation.dart';
part 'user_credentials_dto.g.dart';

@JsonSerializable()
class UserCredentialsDto {
  final String username;
  final String password;

  UserCredentialsDto({
    required this.username,
    required this.password,
  });

  factory UserCredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserCredentialsDtoToJson(this);
}
