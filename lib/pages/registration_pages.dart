import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_application_3/Routes.dart';
import 'package:flutter_application_3/components/my_textfield.dart';

class RegistrationPages extends StatelessWidget {
  const RegistrationPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtnama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtNoHp = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "Registration Page",
          style: TextStyle(
            color: Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF0F172A)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0F172A).withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    MyTextfield(
                      myhint: "Nama",
                      txtController: txtnama,
                      radius: 10,
                    ),
                    const SizedBox(height: 16),
                    MyTextfield(
                      myhint: "alamat",
                      txtController: txtAlamat,
                      radius: 10,
                    ),
                    const SizedBox(height: 16),
                    MyTextfield(
                      myhint: "Email",
                      txtController: txtEmail,
                      radius: 10,
                    ),
                    const SizedBox(height: 16),
                    MyTextfield(
                      myhint: "No Hp",
                      txtController: txtNoHp,
                      radius: 10,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    const SizedBox(height: 16),
                    MyTextfield(
                      myhint: "Jenis Kelamin",
                      txtController: txtJenisKelamin,
                      radius: 10,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      Routes.confirmRegistration,
                      arguments: {
                        "nama": txtnama.text.toString(),
                        "alamat": txtAlamat.text.toString(),
                        "email": txtEmail.text.toString(),
                        "jenis_kelamin": txtJenisKelamin.text.toString(),
                        "no_hp": txtNoHp.text.toString(),
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}