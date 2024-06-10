part of '../login.dart';

class DescriptionText extends StatelessWidget {
  final bool isIndividuals;

  const DescriptionText({super.key, required this.isIndividuals});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            isIndividuals ? LocaleKeys.personal_banking_description.tr() : LocaleKeys.business_banking_description.tr(),
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
      ],
    );
  }
}
