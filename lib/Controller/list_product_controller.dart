import 'package:get/get.dart';
import 'package:flutter_application_3/models/produk_model.dart';

class ListProductController extends GetxController {
  RxList<ProdukModel> produkList = [
    ProdukModel(
      namaProduk: 'Samsung',
      harga: '10 jt',
      description: 'Smartphone Samsung kelas flagship dengan fitur canggih.',
      imageProduk:
          'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=600',
      reviews: '120 reviews',
      rating: '4.8',
      namaToko: 'Samsung Official Store',
    ),
    ProdukModel(
      namaProduk: 'Iphone',
      harga: '20 jt',
      description: 'iPhone dengan kamera terbaik dan performa cepat.',
      imageProduk:
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=600',
      reviews: '250 reviews',
      rating: '4.9',
      namaToko: 'iBox Store',
    ),
    ProdukModel(
      namaProduk: 'Ps 4',
      harga: '30 jt',
      description: 'Konsol game populer dengan banyak game eksklusif.',
      imageProduk:
          'https://images.unsplash.com/photo-1507457379470-08b800bebc67?w=600',
      reviews: '300 reviews',
      rating: '4.7',
      namaToko: 'Sony Store',
    ),
    ProdukModel(
      namaProduk: 'Ps 5',
      harga: '40 jt',
      description: 'Konsol game generasi terbaru dengan grafis menakjubkan.',
      imageProduk:
          'https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=600',
      reviews: '400 reviews',
      rating: '4.9',
      namaToko: 'Sony Store',
    ),
    ProdukModel(
      namaProduk: 'Xiomi',
      harga: '50 jt',
      description:
          'Smartphone Xiomi dengan spesifikasi tinggi dan harga terjangkau.',
      imageProduk:
          'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=600',
      reviews: '150 reviews',
      rating: '4.6',
      namaToko: 'Xiomi Official Store',
    ),
  ].obs;

  late final List<ProdukModel> produkAwal;

  @override
  void onInit() {
    super.onInit();
  
    produkAwal = List<ProdukModel>.from(produkList);
  }

  Future<void> refreshProduk() async {
    await Future.delayed(const Duration(seconds: 2));

    produkList.assignAll(produkAwal);
  }
}