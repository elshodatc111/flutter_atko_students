import 'package:flutter/material.dart';

class ProfelPage extends StatelessWidget {
  const ProfelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://picsum.photos/seed/904/600',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Elshod Musurmonov",
            style: TextStyle(
              color: Color(0xff0D0D26),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5,
          ),


        ],
      ),
    );
  }
}
