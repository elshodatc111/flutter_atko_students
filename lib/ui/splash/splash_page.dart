import 'package:flutter/material.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFB0B53),
      body: Center(
        child: Image.asset('assets/images/splashe.png'),
      ),
    );
  }
}
