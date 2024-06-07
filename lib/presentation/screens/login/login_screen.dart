part of 'login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
