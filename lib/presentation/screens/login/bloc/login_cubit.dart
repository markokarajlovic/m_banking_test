import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:m_banking_test/presentation/screens/login/bloc/login_state.dart';

@LazySingleton()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void setBankingMode(bool value) {
    emit(state.copyWith(isIndividuals: value));
  }
}
