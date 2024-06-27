import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfelPage extends StatelessWidget {
  const ProfelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://picsum.photos/seed/904/600',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Elshod Musurmonov",
            style: TextStyle(
              color: Color(0xff0D0D26),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text('appBarHome'.tr),
          TextButton(
            onPressed: () {
              if(Get.locale == const Locale('uz','UZ')){
                Get.updateLocale(const Locale('ru','RU'));
              }else{
                Get.updateLocale(const Locale('uz','UZ'));
              }
            },
            child: Text("Translate"),
          ),
        ],
      ),
    );
  }
}
