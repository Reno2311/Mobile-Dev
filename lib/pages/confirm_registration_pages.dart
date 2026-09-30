import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Controller/confirm_registration_controllers.dart';
import 'package:get/get.dart';

class ConfirmRegristrationPages extends StatelessWidget {
  const ConfirmRegristrationPages({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationControllers());

    return Scaffold(
      backgroundColor: Colors.grey.shade100, // Warna background aplikasi yang lebih lembut
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(20), // Ditambahkan margin luar agar container tidak mentok layar
              padding: const EdgeInsets.all(20), // Padding disesuaikan agar lebih lega
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri agar susunan teks rapi
                children: [
                  Text(
                    "Nama : " + controller.nama.toString(),
                    style: const TextStyle(
                      fontSize: 16, // Ukuran font diperkecil dari 30 agar lebih pas
                      color: Colors.black87, // Warna diganti dari hijau ke netral
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Alamat : " + controller.alamat.toString(), // Perbaikan label "Nama :" menjadi "Alamat :"
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Email : " + controller.email.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Jenis Kelamin : " + controller.jenisKelamin.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "No HP : " + controller.noHp.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("OKE"),
          ),
        ],
      ),
    );
  }
}