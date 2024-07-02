
import 'package:atko_studens/ui/auth/login_page.dart';
import 'package:atko_studens/ui/home/home_page.dart';
import 'package:atko_studens/ui/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    var auth = Hive.box('auth');
    Future.delayed(Duration(seconds: 1)).then(
      (value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => auth.get('token',defaultValue: '').toString().isNotEmpty?MainPage():LoginPage(),
        ),(route)=>false
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFB0B53),
      body: Center(
        child: Image.asset('assets/images/splashe.png'),
      ),
    );
  }
}
