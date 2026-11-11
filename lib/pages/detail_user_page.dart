import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Sesuaikan import ini dengan nama file controllermu:
import 'package:flutter_application_3/controller/detailuser_controller.dart'; 

class DetailUserPage extends StatelessWidget {
  DetailUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Memanggil DetailUserController yang baru dibuat
    final controller = Get.put(DetailUserController());

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.name),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      // Menampilkan foto acak yang sama seperti di list
                      'https://picsum.photos/seed/${controller.username}/400',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    controller.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    '@${controller.username}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 12),

                  const Divider(color: Colors.black12),
                  const SizedBox(height: 8),

                  const Text(
                    'Informasi Kontak:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  
                  // Menggunakan Row dan Icon agar info kontak lebih rapi
                  Row(
                    children: [
                      const Icon(Icons.email_outlined, size: 18, color: Colors.black54),
                      const SizedBox(width: 8),
                      Text(
                        controller.email,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.phone_outlined, size: 18, color: Colors.black54),
                      const SizedBox(width: 8),
                      Text(
                        controller.phone,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.language_outlined, size: 18, color: Colors.black54),
                      const SizedBox(width: 8),
                      Text(
                        controller.website,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                  const Divider(color: Colors.black12),
                  const SizedBox(height: 8),

                  Text(
                    'Kota: ${controller.city}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Perusahaan: ${controller.company}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}