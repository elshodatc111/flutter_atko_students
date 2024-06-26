
import 'package:atko_studens/ui/provider/main_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, provider, _) {
      return Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(color: Color(0xffFB0B53), boxShadow: [
          BoxShadow(
            color: Color(0xffFB0B53).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...provider.views.map((view) {
              bool isActive = provider.currentIndex == view['index'];
              return IconButton(
                onPressed: () {
                  provider.currentIndexChange(view['index']);
                },
                icon: view['icon'],
                color: isActive?Colors.grey:Colors.white,
                iconSize: 24,
              );
            }),
          ],
        ),
      );
    });
  }
}