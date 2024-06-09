part of '../login.dart';

class ModeSwitcher extends StatelessWidget {
  final bool isIndividuals;
  final void Function(bool value) onTap;

  const ModeSwitcher({
    super.key,
    required this.isIndividuals,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 28,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          const Gap(2),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: isIndividuals
                  ? null
                  : () {
                      onTap(true);
                    },
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: isIndividuals ? Colors.white : null,
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
              onTap: !isIndividuals
                  ? null
                  : () {
                      onTap(false);
                    },
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: !isIndividuals ? Colors.white : null,
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
          const Gap(2),
        ],
      ),
    );
  }
}
