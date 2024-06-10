import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:m_banking_test/presentation/screens/login/bloc/login_state.dart';

import 'package:m_banking_test/data/repositories/login_repository.dart';

@Singleton()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    @Named('LoginRepository') required LoginRepository loginRepository,
  })  : _loginRepository = loginRepository,
        super(const LoginState());

  final LoginRepository _loginRepository;

  void setBankingMode(bool value) {
    emit(state.copyWith(isIndividuals: value));
  }

  void startLogin() {
    _loginRepository.startLogin();
  }
}
