// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCredentialsDto _$UserCredentialsDtoFromJson(Map<String, dynamic> json) =>
    UserCredentialsDto(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCredentialsDtoToJson(UserCredentialsDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
