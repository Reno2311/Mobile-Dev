import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/list_product_controller.dart';
import 'package:get/get.dart';
import '../Routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home - list produk"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                "Daftar Produk",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // Container dengan height untuk membungkus ListView horizontal
            Container(
              height: 220,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  itemCount: controller.produkList.length,
                  itemBuilder: (context, index) {
                    final produk = controller.produkList[index];
                    return SizedBox(
                      width: 160,
                      child: Card(
                        color: Colors.white,
                        elevation: 2,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.black12),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Get.toNamed(
                              Routes.detailProduk,
                              arguments: {
                                'namaProduk': produk.namaProduk,
                                'harga': produk.harga,
                                'description': produk.description,
                                'imageProduk': produk.imageProduk,
                                'reviews': produk.reviews,
                                'rating': produk.rating,
                                'namaToko': produk.namaToko,
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    produk.imageProduk,
                                    width: double.infinity,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  produk.namaProduk,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Rp ${produk.harga}',
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}