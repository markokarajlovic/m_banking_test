import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:m_banking_test/app/app_state.dart';
import 'package:m_banking_test/data/enums/language_enum.dart';

@LazySingleton()
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void setLanguage(LanguageEnum? value, BuildContext context) async {
    switch (value) {
      case null:
      case LanguageEnum.srb:
        await context.setLocale(const Locale('sr'));
        emit(state.copyWith(
          languageEnum: value ?? LanguageEnum.srb,
          currentLocale: const Locale('sr'),
        ));
        break;
      case LanguageEnum.eng:
        await context.setLocale(const Locale('en'));
        emit(state.copyWith(
          languageEnum: value,
          currentLocale: const Locale('en'),
        ));
    }
  }
}
