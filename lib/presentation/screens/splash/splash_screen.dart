import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:m_banking_test/config/navigation.dart';
import 'package:m_banking_test/generated/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _init(context);
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Assets.icons.raiffeisenBankIcon.image(
        width: 200,
        height: 200,
      )),
    );
  }

  void _init(BuildContext context) async {
    // some initializations goes here then remove delay
    Future.delayed(const Duration(seconds: 2)).then(
      (_) {
        context.goNamed(NavigationRoutes.login.name);
      },
    );
  }
}
