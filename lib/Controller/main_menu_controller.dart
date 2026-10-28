import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/menu/history.dart';
import 'package:flutter_application_3/menu/home.dart';
import 'package:flutter_application_3/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;

  }

  List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    HistoryPage(),
  ];
}