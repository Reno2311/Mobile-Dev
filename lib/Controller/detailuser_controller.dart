import 'package:get/get.dart';

class DetailUserController extends GetxController {
  late String name;
  late String username;
  late String email;
  late String phone;
  late String website;
  late String city;
  late String company;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    // Mengambil data dari arguments yang dikirimkan melalui navigasi
    name = arguments['name'];
    username = arguments['username'];
    email = arguments['email'];
    phone = arguments['phone'];
    website = arguments['website'];
    city = arguments['city'];
    company = arguments['company'];
  }
}