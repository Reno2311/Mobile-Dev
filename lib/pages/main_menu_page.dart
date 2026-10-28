import 'package:flutter_application_3/Controller/main_menu_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: menuController.selectedIndex.value,
          children: menuController.pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: menuController.selectedIndex.value,
          onTap: menuController.changePage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Profile"),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
          ],
        ),
      ),
    );
  }
}