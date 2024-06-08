part of 'login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<LanguageEnum>(
                      value: LanguageEnum.srb,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      onChanged: (LanguageEnum? value) {},
                      items: LanguageEnum.values.map<DropdownMenuItem<LanguageEnum>>((LanguageEnum value) {
                        return DropdownMenuItem<LanguageEnum>(
                          value: value,
                          child: Text(value.title),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  height: 28,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 2),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: state.isIndividuals
                              ? null
                              : () {
                                  context.read<LoginCubit>().setBankingMode(true);
                                },
                          child: Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: state.isIndividuals ? Colors.white : null,
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              LocaleKeys.personal_banking.tr(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: !state.isIndividuals
                              ? null
                              : () {
                                  context.read<LoginCubit>().setBankingMode(false);
                                },
                          child: Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: !state.isIndividuals ? Colors.white : null,
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              LocaleKeys.business_banking.tr(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 2),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Row(
                    children: [
                      DecoratedBox(
                        position: DecorationPosition.foreground,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          'assets/icons/raiffeisen_bank_icon.jpeg',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        LocaleKeys.bank_name.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 0.9,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 8),
                  child: Text(
                    LocaleKeys.welcome_text.tr().toUpperCase(),
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 16),
                  child: Text(
                    state.isIndividuals
                        ? LocaleKeys.personal_banking_description.tr()
                        : LocaleKeys.business_banking_description.tr(),
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      height: 0.9,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 16),
                  child: Text(
                    LocaleKeys.easy_use_description.tr(),
                    style: const TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.login_button_text.tr(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
