import 'package:easy_localization/easy_localization.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:m_banking_test/data/models/error/failure.dart';
import 'package:m_banking_test/generated/locale_keys.g.dart';

abstract class LoginLocalDatasource {
  Future<Either<Failure, bool>> startLogin();
}

@Named('LoginLocalDatasource')
@LazySingleton(as: LoginLocalDatasource)
class LoginLocalDatasourceImpl implements LoginLocalDatasource {
  @override
  Future<Either<Failure, bool>> startLogin() async {
    final LocalAuthentication auth = LocalAuthentication();
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate = canAuthenticateWithBiometrics || await auth.isDeviceSupported();
    if (canAuthenticate) {
      final isAuthenticated = await auth.authenticate(
        localizedReason: LocaleKeys.biometric_description.tr(),
        options: const AuthenticationOptions(biometricOnly: true),
      );

      if (isAuthenticated) {
        return const Right(true);
      } else {
        return Left(BiometricFailure(
          message: LocaleKeys.user_fail_to_authenticate_message.tr(),
        ));
      }
    } else {
      return Left(DeviceNotSupportBiometricFailure(
        message: LocaleKeys.device_do_not_support_biometric_message.tr(),
      ));
    }
  }
}
