// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/api/api_client.dart' as _i9;
import 'data/api/dio_client.dart' as _i12;
import 'data/repository/user_repository_impl.dart' as _i11;
import 'data/shared_pref/shared_pref_impl.dart' as _i4;
import 'data/source/local/auth_local_source_impl.dart' as _i6;
import 'data/source/remote/auth_remote_source_impl.dart' as _i8;
import 'domain/repository/user_repository.dart' as _i10;
import 'domain/shared_pref/shared_pref.dart' as _i3;
import 'domain/source/local/auth_local_source.dart' as _i5;
import 'domain/source/remote/user_remote_source.dart' as _i7;
import 'domain/use_case/user/user_info_use_case.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.SharePref>(() => _i4.SharePrefImpl());
    gh.lazySingleton<_i5.AuthLocalSource>(
        () => _i6.AuthLocalSourceImpl(sharePref: gh<_i3.SharePref>()));
    gh.lazySingleton<_i7.UserRemoteSource>(
        () => _i8.UserRemoteSourceImpl(client: gh<_i9.RestClient>()));
    gh.lazySingleton<_i10.UserRepository>(() =>
        _i11.ProfileRepositoryImpl(remoteSource: gh<_i7.UserRemoteSource>()));
    gh.lazySingleton<_i12.DioClient>(
        () => _i12.DioClient(sharePerf: gh<_i3.SharePref>()));
    gh.lazySingleton<_i13.UserInfoUseCase>(
        () => _i13.UserInfoUseCase(repository: gh<_i10.UserRepository>()));
    return this;
  }
}
