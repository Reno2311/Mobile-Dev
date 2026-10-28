import 'package:get/get.dart';

class DetailProductController extends GetxController {
  late String namaProduk;
  late String harga;
  late String description;
  late String imageProduk;
  late String reviews;
  late String rating;
  late String namaToko;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    description = arguments['description'];
    imageProduk = arguments['imageProduk'];
    reviews = arguments['reviews'];
    rating = arguments['rating'];
    namaToko = arguments['namaToko'];
  }
}
