import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default(LoginStateStatus.init) final LoginStateStatus status,
    final String? errorMessage,
    @Default(true) final bool isIndividuals,
  }) = _LoginState;
}

enum LoginStateStatus {
  init,
  error,
  successfulLogin,
}
