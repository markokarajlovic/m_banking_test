// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "bank_name": "Raiffeisen\nBank",
  "personal_banking": "Individuals",
  "business_banking": "Legal entities",
  "welcome_text": "Welcome",
  "personal_banking_description": "My mBank\nfor the population",
  "business_banking_description": "My mBank\nThe business",
  "easy_use_description": "Swift, easy and secure",
  "login_button_text": "Log in",
  "bottom_nav_bar_login": "Login",
  "bottom_nav_bar_token": "Token",
  "bottom_nav_bar_ips": "IPS",
  "bottom_nav_bar_support": "Support",
  "bottom_nav_bar_other": "Other"
};
static const Map<String,dynamic> sr = {
  "bank_name": "Raiffeisen\nBank",
  "personal_banking": "Fizička lica",
  "business_banking": "Pravna Lica",
  "welcome_text": "Dobro Došli",
  "personal_banking_description": "Moja mBanka\nza stanovništvo",
  "business_banking_description": "Moja mBanka\nBiznis",
  "easy_use_description": "Brzo, lako i sigurno",
  "login_button_text": "Uloguj se",
  "bottom_nav_bar_login": "Prijava",
  "bottom_nav_bar_token": "Token",
  "bottom_nav_bar_ips": "IPS",
  "bottom_nav_bar_support": "Podrška",
  "bottom_nav_bar_other": "Ostalo"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "sr": sr};
}
