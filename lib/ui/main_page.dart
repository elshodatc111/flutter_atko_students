import 'package:atko_studens/ui/utels/bottom_nav.dart';
import 'package:atko_studens/ui/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      builder: (context, snapshot) {
        return Consumer<MainProvider>(builder: (context, provider, _) {
          return Scaffold(
            appBar: AppBar(
              title: Text("${provider.currentViewTitle}"),
              actions: const [
                Icon(Icons.monetization_on),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "150 000",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: provider.currentViewWidget,
            ),
            bottomNavigationBar: const BottomNav(),
          );
        });
      },
    );
  }
}
