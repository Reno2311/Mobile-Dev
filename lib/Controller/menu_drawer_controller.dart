import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/menu/history.dart';
import 'package:flutter_application_3/menu/home.dart';
import 'package:flutter_application_3/menu/profile.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  void gantiPage(int index) {
    selectedIndex.value = index;
    Get.back();
  }

  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    HistoryPage(),
  ];
}