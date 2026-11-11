import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// Pastikan path import model ini sesuai dengan nama file model kamu:
import 'package:flutter_application_3/models/user_model.dart';

class UserController extends GetxController {
  var isLoading = false.obs;
  
  // Menggunakan nama 'userModel' agar cocok dengan panggilan controller.userModel di UI kamu
  var userModel = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  // Fungsi 'fetchUsers' agar cocok dengan panggilan controller.fetchUsers() di UI kamu
  Future<void> fetchUsers() async {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://jsonplaceholder.typicode.com/users");

      final response = await http.get(url);

      isLoading.value = false;
      if (response.statusCode == 200) {
        userModel.value = userModelFromJson(response.body);
      } else {
        Get.snackbar("Error", "Cek Internet Connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", e.toString());
      print("Error : ${e.toString()}");
    }
  }
}