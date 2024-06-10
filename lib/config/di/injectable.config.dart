// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:m_banking_test/app/app_cubit.dart' as _i3;
import 'package:m_banking_test/data/data_source/login_local_datasource.dart'
    as _i4;
import 'package:m_banking_test/data/repositories/login_repository.dart' as _i5;
import 'package:m_banking_test/presentation/screens/login/bloc/login_cubit.dart'
    as _i6;

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
    gh.lazySingleton<_i3.AppCubit>(() => _i3.AppCubit());
    gh.lazySingleton<_i4.LoginLocalDatasource>(
      () => _i4.LoginLocalDatasourceImpl(),
      instanceName: 'LoginLocalDatasource',
    );
    gh.lazySingleton<_i5.LoginRepository>(
      () => _i5.LoginRepositoryImpl(
          loginLocalDatasource: gh<_i4.LoginLocalDatasource>(
              instanceName: 'LoginLocalDatasource')),
      instanceName: 'LoginRepository',
    );
    gh.singleton<_i6.LoginCubit>(() => _i6.LoginCubit(
        loginRepository:
            gh<_i5.LoginRepository>(instanceName: 'LoginRepository')));
    return this;
  }
}
