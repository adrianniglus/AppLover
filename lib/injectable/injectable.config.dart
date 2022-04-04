// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../data/auth/auth_service_impl.dart' as _i8;
import '../data/data_source/api/fake_dio_client.dart' as _i3;
import '../data/data_source/local/flickit_secure_storage.dart' as _i4;
import '../data/mapper.dart' as _i5;
import '../domain/auth/auth_service.dart' as _i7;
import '../domain/auth/use_cases/login_use_case.dart' as _i9;
import '../presentation/login_page/cubit/login_cubit.dart' as _i10;
import 'shared_preferences_injectable.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.FakeDioClient>(() => _i3.FakeDioClient());
  gh.singleton<_i4.FlickitSecureStorage>(_i4.FlickitSecureStorage());
  gh.singleton<_i5.Mapper>(_i5.Mapper());
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.AuthService>(() => _i8.AuthServiceImpl(get<_i5.Mapper>(),
      get<_i4.FlickitSecureStorage>(), get<_i3.FakeDioClient>()));
  gh.factory<_i9.LoginUseCase>(() => _i9.LoginUseCase(get<_i7.AuthService>()));
  gh.factory<_i10.LoginCubit>(() => _i10.LoginCubit(get<_i9.LoginUseCase>()));
  return get;
}

class _$SharedPreferencesModule extends _i11.SharedPreferencesModule {}
