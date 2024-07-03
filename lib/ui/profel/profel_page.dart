import 'package:atko_studens/ui/auth/login_page.dart';
import 'package:atko_studens/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProfelPage extends StatelessWidget {
  const ProfelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const ProfelView(),
          const SizedBox(height: 50,),

          TextButton(
            onPressed: () {
              var auth = Hive.box('auth');
              print(auth.get('token'));
              auth.put('token', '');
              Get.to(() => SplashPage());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.login_outlined,
                  size: 18,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'chiqish'.tr,
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: 250,),
          const Language(),
        ],
      ),
    );
  }
}
class ProfelView extends StatelessWidget {
  const ProfelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/9/9e/Male_Avatar.jpg',
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
        const Text(
          "+998 90 883 0450",
          style: TextStyle(
            color: Color(0xff0D0D26),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'changeLanguage'.tr,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  if (Get.locale == const Locale('ru', 'RU')) {
                    Get.updateLocale(const Locale('uz', 'UZ'));
                  }
                },
                child: const Text("UZ"),
              ),
              TextButton(
                onPressed: () {
                  if (Get.locale == const Locale('uz', 'UZ')) {
                    Get.updateLocale(const Locale('ru', 'RU'));
                  }
                },
                child: const Text("RU"),
              ),
            ],
          )
        ],
      ),
    );
  }
}


