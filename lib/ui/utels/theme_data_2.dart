import 'package:flutter/material.dart';

class ThemeData2 {
  String fontFamily;
  String textTheme;
  String bgTheme;

  ThemeData2({
    required this.textTheme,
    required this.fontFamily,
    required this.bgTheme,
  });

  static ThemeData self() {
    var themData = ThemeData(
      fontFamily: '',
      textTheme: const TextTheme(),
      scaffoldBackgroundColor: Colors.grey.shade50,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffFB0B53),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: Color(0xffffffff),
          size: 20
        )
      ),
    );
    return themData;
  }
}
