import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/list_product_controller.dart';
import 'package:get/get.dart';

import '../Routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Products"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          color: Colors.blue,
          backgroundColor: Colors.white,

          onRefresh: () async {
            await controller.refreshProduk();
            Get.snackbar(
              "Berhasil",
              "Data produk berhasil diperbarui",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
          child: Obx(
            () => ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              itemCount: controller.produkList.length,
              itemBuilder: (context, index) {
                final produk = controller.produkList[index];
                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    controller.produkList.removeAt(index);
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 4,
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
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            produk.imageProduk,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          produk.namaProduk,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Rp ${produk.harga}',
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
