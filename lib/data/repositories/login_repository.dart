import 'package:injectable/injectable.dart';
import 'package:m_banking_test/data/data_source/login_local_datasource.dart';

abstract class LoginRepository {
  void startLogin() {}
}

@Named('LoginRepository')
@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginLocalDatasource _loginLocalDatasource;

  LoginRepositoryImpl({
    @Named('LoginLocalDatasource') required LoginLocalDatasource loginLocalDatasource,
  }) : _loginLocalDatasource = loginLocalDatasource;

  @override
  void startLogin() {
    _loginLocalDatasource.startLogin();
  }
}
