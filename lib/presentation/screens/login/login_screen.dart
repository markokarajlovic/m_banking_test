part of 'login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (oldState, newState) {
        return oldState.status != newState.status;
      },
      listener: (context, state) {
        if (state.status == LoginStateStatus.error) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage ?? ''),
          ));
        }
      },
      builder: (context, state) {
        Widget child = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocSelector<AppCubit, AppState, LanguageEnum>(
              selector: (state) => state.languageEnum,
              builder: (context, selector) {
                return LanguageDropdown(
                  selectedLanguage: selector,
                  onChanged: (LanguageEnum? value) {
                    context.read<AppCubit>().setLanguage(value, context);
                  },
                );
              },
            ),
            const Gap(16),
            ModeSwitcher(
              isIndividuals: state.isIndividuals,
              onTap: (value) {
                context.read<LoginCubit>().setBankingMode(value);
              },
            ),
            const Gap(40),
            const LogoAndName(),
            const Spacer(),
            DescriptionText(isIndividuals: state.isIndividuals),
            PrimaryButton(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              text: LocaleKeys.login_button_text.tr(),
              onTap: context.read<LoginCubit>().startLogin,
            ),
            const Gap(32),
          ],
        );

        if (state.status == LoginStateStatus.successfulLogin) {
          child = const Center(
            child: Text('User is Logged in'),
          );
        }

        return DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.7],
              colors: [
                Colors.yellow,
                Colors.white,
              ],
            ),
          ),
          child: child,
        );
      },
    );
  }
}
