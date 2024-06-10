import 'package:injectable/injectable.dart';

abstract class LoginLocalDatasource {
  void startLogin() {}
}

@Named('LoginLocalDatasource')
@LazySingleton(as: LoginLocalDatasource)
class LoginLocalDatasourceImpl implements LoginLocalDatasource {
  @override
  void startLogin() {
  }
}
