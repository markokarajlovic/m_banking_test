import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_banking_test/config/di/injectable.dart';

class InjectedBlocProvider<B extends BlocBase<Object>> extends BlocProvider<B> {
  InjectedBlocProvider({
    super.key,
    super.lazy = false,
    void Function(B)? onCreate,
    super.child,
  }) : super(
          create: (context) {
            final bloc = getIt<B>();
            onCreate?.call(bloc);
            return bloc;
          },
        );
}
