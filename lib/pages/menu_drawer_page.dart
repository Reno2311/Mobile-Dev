import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/menu_drawer_controller.dart';


class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage ({super.key});

  final drawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Nav"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Menu Navigasi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () => drawerController.gantiPage(0),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () => drawerController.gantiPage(1),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () => drawerController.gantiPage(2),
            ),
          ],
        ),
      ),
      body: Obx(
        () => drawerController.pages[drawerController.selectedIndex.value],
      ),
    );
  }
}