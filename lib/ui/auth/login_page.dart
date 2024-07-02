import 'dart:convert';

import 'package:atko_studens/ui/auth/add_token_provider.dart';
import 'package:atko_studens/ui/utels/api_endi_points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>AddTokenProvider(),
      builder: (context,child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Kirish",
                  style: TextStyle(
                    color: Color(0xffFB0B53),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Login",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Color(0xffFB0B53),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Color(0xffFB0B53),
                        width: 2.0,
                      ),
                    ),
                  ),
                  controller: context.watch<AddTokenProvider>().emailController,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: "Parol",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Color(0xffFB0B53),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Color(0xffFB0B53),
                        width: 2.0,
                      ),
                    ),
                  ),
                  controller: context.watch<AddTokenProvider>().passwordController,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () async {
                    context.read<AddTokenProvider>().AddNewToken();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    padding: const EdgeInsets.all(5.0),
                    backgroundColor: const Color(0xffFB0B53),
                    elevation: 15,
                  ),
                  child: const Text(
                    "Kirish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
