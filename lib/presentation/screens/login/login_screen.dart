part of 'login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: Placeholder(),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Raiffeisen\nBank',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(left: 32, bottom: 8),
              child: Text(
                'DOBRO DOŠLI',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, bottom: 16),
              child: Text(
                'Moja mBanka\nza stanovništvo',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  height: 0.9,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, bottom: 16),
              child: Text(
                'Brzo, lako i sigurno',
                style: TextStyle(color: Colors.black54),
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
