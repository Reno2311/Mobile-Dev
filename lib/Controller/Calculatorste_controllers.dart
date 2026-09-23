import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilhitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilhitung.value = hasilTambah;
    Get.snackbar(
      "Hasil Tambah",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilhitung.value = hasilKurang;
    Get.snackbar(
      "Hasil Kurang",
      "${hasilKurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilhitung.value = hasilKali;
    Get.snackbar(
      "Hasil Kali",
      "${hasilKali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      hasilhitung.value = 0;
      Get.snackbar(
        "Hasilnya",
        "0",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    double hasilBagi = angka1 / angka2;
    hasilhitung.value = hasilBagi;
    Get.snackbar(
      "Hasil Bagi",
      hasilBagi.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
