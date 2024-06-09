part of '../login.dart';

class LanguageDropdown extends StatelessWidget {
  final LanguageEnum selectedLanguage;
  final void Function(LanguageEnum? value) onChanged;

  const LanguageDropdown({
    super.key,
    required this.selectedLanguage,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LanguageEnum>(
          value: selectedLanguage,
          icon: const Icon(Icons.keyboard_arrow_down),
          style: const TextStyle(color: Colors.black, fontSize: 16),
          onChanged: onChanged,
          items: LanguageEnum.values.map<DropdownMenuItem<LanguageEnum>>((LanguageEnum value) {
            return DropdownMenuItem<LanguageEnum>(
              value: value,
              child: Text(value.title),
            );
          }).toList(),
        ),
      ),
    );
  }
}
