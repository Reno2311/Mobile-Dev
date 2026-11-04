import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/login_controller.dart';
import 'package:flutter_application_3/components/clone_fix_button.dart';
import 'package:flutter_application_3/components/clone_fix_logo.dart';
import 'package:flutter_application_3/components/clone_fix_textbutton.dart';
import 'package:flutter_application_3/components/clone_fix_textfield.dart';

class LoginCloneFix extends StatelessWidget {
  final controller = Get.put(LoginController());

  LoginCloneFix({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login API'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CloneFixLogo(),
              const SizedBox(height: 40),

              CloneFixTextfield(
                controller: controller.txtUsername,
                myhint: 'Nomor telepon, email, atau username',
                radius: 6,
              ),
              const SizedBox(height: 12),

              CloneFixTextfield(
                controller: controller.txtPassword,
                myhint: 'Kata sandi',
                radius: 6,
                isObscure: true,
              ),
              const SizedBox(height: 16),
              Obx(
                () => controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : CloneFixButton(
                        text: 'Masuk',
                        onPressed: () {
                          controller.login();
                        },
                        radius: 6,
                      ),
              ),

              const SizedBox(height: 20),

              CloneFixTextButton(text: 'Dapatkan bantuan.', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
