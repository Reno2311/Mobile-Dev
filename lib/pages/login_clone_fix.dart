import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/clone_fix_button.dart';
import 'package:flutter_application_3/components/clone_fix_logo.dart';
import 'package:flutter_application_3/components/clone_fix_textbutton.dart';
import 'package:flutter_application_3/components/clone_fix_textfield.dart';

class LoginCloneFix extends StatelessWidget {
  
  const LoginCloneFix({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

             
              const CloneFixTextfield(
                myhint: 'Nomor telepon, email, atau username',
                radius: 6,
                ),
                const SizedBox(height: 12),
            
              const CloneFixTextfield(
                myhint: 'Kata sandi',
                radius: 6,
                isObscure: true, 
                ),
                const SizedBox(height: 16),
              
              CloneFixButton(
                text: 'Masuk',
                onPressed: () {},
                radius: 6,
              ),
              const SizedBox(height: 20),

              
              CloneFixTextButton(
                text: 'Dapatkan bantuan.',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}