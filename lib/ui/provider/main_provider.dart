import 'package:atko_studens/ui/grops/groups_page.dart';
import 'package:atko_studens/ui/home/home_page.dart';
import 'package:atko_studens/ui/paymart/paymart_page.dart';
import 'package:atko_studens/ui/profel/profel_page.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier{
  List<Map<String, dynamic>> views = [
    {
      "index": 0,
      'title': "Bosh sahifa",
      'widget': const HomePage(),
      'icon': const Icon(Icons.home),
    },
    {
      "index": 1,
      'title': "Guruhlar",
      'widget': const GroupsPage(),
      'icon': const Icon(Icons.search),
    },
    {
      "index": 2,
      'title': "To'lovlar",
      'widget': const PaymartPage(),
      'icon': const Icon(Icons.heart_broken),
    },
    {
      "index": 3,
      'title': "Profel",
      'widget': const ProfelPage(),
      'icon': const Icon(Icons.person),
    }
  ];
  Widget get currentViewWidget => views[currentIndex]['widget'];

  String get currentViewTitle => views[currentIndex]['title'];

  Icon get currentViewIcon => views[currentIndex]['icon'];

  int currentIndex = 0;

  void currentIndexChange(int index) {
    currentIndex = index;
    notifyListeners();
  }

  var searchController = TextEditingController();
}