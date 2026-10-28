import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/menu/history.dart';
import 'package:flutter_application_3/menu/home.dart';
import 'package:flutter_application_3/menu/profile.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  // Variabel reaktif untuk menyimpan indeks menu yang sedang aktif
  final RxInt selectedIndex = 0.obs;

  // Fungsi untuk mengubah halaman aktif dan menutup drawer secara otomatis
  void gantiPage(int index) {
    selectedIndex.value = index;
    Get.back(); // Menutup drawer setelah menu dipilih
  }

  // Daftar halaman yang di-re-use dari file yang sudah kamu buat
  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    HistoryPage(),
  ];
}