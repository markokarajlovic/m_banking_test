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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  onPressed: () {},
                  child: const Text('Uloguj se'),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
