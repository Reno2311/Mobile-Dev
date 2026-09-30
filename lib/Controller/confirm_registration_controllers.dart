import 'package:get/get.dart';

class ConfirmRegistrationControllers extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String jenisKelamin;
  late String noHp;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    nama = arguments['nama'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    jenisKelamin = arguments['jenis_kelamin'];
    noHp = arguments['no_hp'];
    //jenis kelamin dll
  }

}