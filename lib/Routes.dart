import 'package:flutter_application_3/pages/confirm_registration_pages.dart';
import 'package:flutter_application_3/pages/list_produk_pages.dart';
import 'package:flutter_application_3/pages/registration_pages.dart';
import 'package:flutter_application_3/pages/detail_produk_pages.dart';
import 'package:flutter_application_3/pages/main_menu_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yang ada di dalam aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenu = "/mainMenu";

  //dll login, kalkulator

  //tampung ke dalam array yang akan kita pasang ke main dart
  static final mypages = [
    GetPage(name: registration, page: ()=> RegistrationPages()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegristrationPages()),
    GetPage(name: listProduk, page: ()=> ListProdukPage()),
    GetPage(name: detailProduk, page: ()=> DetailProductPages()),
    GetPage(name: mainMenu, page: ()=> MainMenuPage()),
    //others page here
  ];
}