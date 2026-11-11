import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/user_controller.dart';
import 'package:get/get.dart';

import '../Routes.dart';

class ListUserPage extends StatelessWidget {
  ListUserPage({super.key});

  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Users"),
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
            // Tambahkan await agar menunggu proses ambil data selesai
            await controller.fetchUsers();
            Get.snackbar(
              "Berhasil",
              "Data user berhasil diperbarui",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
          child: Obx(
            () => ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              // 1. Diseragamkan menjadi controller.userModel
              itemCount: controller.userModel.length,
              itemBuilder: (context, index) {
                // 2. Diseragamkan menjadi controller.userModel
                final user = controller.userModel[index];
                return Dismissible(
                  key: ValueKey(user.id),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    // 3. Sudah sama menggunakan controller.userModel
                    controller.userModel.removeAt(index);
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
                          Routes.detailUser,
                          arguments: {
                            'name': user.name,
                            'username': user.username,
                            'email': user.email,
                            'phone': user.phone,
                            'website': user.website,
                            'city': user.address.city,
                            'company': user.company.name,
                          },
                        );
                      },
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/${user.id}/200',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          user.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          user.email,
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