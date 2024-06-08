import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:m_banking_test/config/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
GetIt configureDependencies() => getIt.init();