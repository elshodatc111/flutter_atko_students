
import 'dart:convert';
import 'package:atko_studens/ui/home/home_page.dart';
import 'package:atko_studens/ui/main_page.dart';
import 'package:atko_studens/ui/splash/splash_page.dart';
import 'package:get/get.dart';
import 'package:atko_studens/ui/utels/api_endi_points.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
class AddTokenProvider extends ChangeNotifier{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var headers = {'Content-Type':'application/json'};
  var url = Uri.parse(ApiEndiPoints.baseUrl+ApiEndiPoints.authEndpints.loginEmail);

  AddTokenProvider(){
    AddNewToken();
  }

  void AddNewToken() async{
    var email = emailController.text;
    var password = passwordController.text;
    if(email.isEmpty || password.isEmpty){
      print('Email or password isEmpty');
      return;
    }
    Map body = {
      'email':email.trim(),
      'password':password
    };
    http.Response response = await http.post(url, body:jsonEncode(body), headers:headers);
    if(response.statusCode==200){
      final json = jsonDecode(response.body);
      var auth = Hive.box('auth');
      auth.put('token', json['token']);
      emailController.clear();
      passwordController.clear();
      notifyListeners();
      Get.to(()=>SplashPage());
    }else{
      print(response.statusCode);
    }
  }
}