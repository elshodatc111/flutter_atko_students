import 'package:atko_studens/ui/auth/login_page.dart';
import 'package:atko_studens/ui/home/home_page.dart';
import 'package:atko_studens/ui/main_page.dart';
import 'package:atko_studens/ui/splash/splash_page.dart';
import 'package:atko_studens/ui/utels/theme_data_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ATKO Student",
      debugShowCheckedModeBanner: false,
      theme: ThemeData2.self(),
      home: const MainPage(),
    );
  }
}
