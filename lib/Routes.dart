import 'package:flutter_application_3/pages/confirm_registration_pages.dart';
import 'package:flutter_application_3/pages/registration_pages.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yang ada di dalam aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  //dll login, kalkulator

  //tampung ke dalam array yang akan kita pasang ke main dart
  static final mypages = [
    GetPage(name: registration, page: ()=> RegistrationPages()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegristrationPages()),
    //others page here
  ];
}