sealed class Failure {
  final String? message;

  Failure({required this.message});
}

class DeviceNotSupportBiometricFailure extends Failure {
  DeviceNotSupportBiometricFailure({required super.message});
}

class BiometricFailure extends Failure {
  BiometricFailure({required super.message});
}
