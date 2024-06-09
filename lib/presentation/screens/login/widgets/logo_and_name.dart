part of '../login.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Row(
        children: [
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Assets.icons.raiffeisenBankIcon.image(
              width: 32,
              height: 32,
            ),
          ),
          const Gap(8),
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
    );
  }
}
