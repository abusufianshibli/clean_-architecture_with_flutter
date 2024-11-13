// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/api/dio_client.dart' as _i8;
import 'data/repository/user_repository_impl.dart' as _i6;
import 'data/shared_pref/shared_pref_impl.dart' as _i4;
import 'domain/repository/user_repository.dart' as _i5;
import 'domain/shared_pref/shared_pref.dart' as _i3;
import 'domain/source/remote/user_remote_source.dart' as _i7;

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
    gh.lazySingleton<_i5.UserRepository>(() =>
        _i6.ProfileRepositoryImpl(remoteSource: gh<_i7.UserRemoteSource>()));
    gh.lazySingleton<_i8.DioClient>(
        () => _i8.DioClient(sharePerf: gh<_i3.SharePref>()));
    return this;
  }
}
