library login;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:m_banking_test/app/app_cubit.dart';
import 'package:m_banking_test/app/app_state.dart';
import 'package:m_banking_test/data/enums/language_enum.dart';
import 'package:m_banking_test/generated/assets.gen.dart';
import 'package:m_banking_test/generated/locale_keys.g.dart';
import 'package:m_banking_test/presentation/screens/login/bloc/login_cubit.dart';
import 'package:m_banking_test/presentation/screens/login/bloc/login_state.dart';
import 'package:m_banking_test/presentation/widgets/primary_button.dart';

part 'login_screen.dart';
part 'widgets/language_dropdown.dart';
part 'widgets/mode_switcher.dart';
part 'widgets/logo_and_name.dart';
part 'widgets/description_text.dart';