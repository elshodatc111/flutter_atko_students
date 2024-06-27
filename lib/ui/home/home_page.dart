import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: ListTile(
              title: const Text(
                "Guruhlar",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Sizda 5 ta guruh mavjud",
                style: TextStyle(color: Colors.orange),
              ),
              // Text for the subtitle
              leading: const Icon(
                Icons.discount_rounded,
                color: Colors.white,
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {},
              ), // Icon for the leading position
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: ListTile(
              title: const Text(
                "To'lovlar",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Sizda 5 ta to'lov mavjud",
                style: TextStyle(color: Colors.orange),
              ),
              // Text for the subtitle
              leading: const Icon(
                Icons.payments_outlined,
                color: Colors.white,
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {},
              ), // Icon for the leading position
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: ListTile(
              title: const Text(
                "Balansni to'ldirish",
                style: TextStyle(color: Colors.white),
              ),
              // Text for the subtitle
              leading: const Icon(
                Icons.monetization_on,
                color: Colors.white,
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {},
              ), // Icon for the leading position
            ),
          ),
        ],
      ),
    );
  }
}
