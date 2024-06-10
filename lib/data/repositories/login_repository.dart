import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:m_banking_test/data/data_source/login_local_datasource.dart';
import 'package:m_banking_test/data/models/error/failure.dart';

abstract class LoginRepository {
  Future<Either<Failure, bool>> startLogin();
}

@Named('LoginRepository')
@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginLocalDatasource _loginLocalDatasource;

  LoginRepositoryImpl({
    @Named('LoginLocalDatasource') required LoginLocalDatasource loginLocalDatasource,
  }) : _loginLocalDatasource = loginLocalDatasource;

  @override
  Future<Either<Failure, bool>> startLogin() async {
    return await _loginLocalDatasource.startLogin();
  }
}
