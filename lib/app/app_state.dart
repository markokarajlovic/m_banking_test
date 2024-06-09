import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m_banking_test/data/enums/language_enum.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(Locale('sr')) final Locale currentLocale,
    @Default(LanguageEnum.srb) final LanguageEnum languageEnum,
  }) = _AppState;
}
