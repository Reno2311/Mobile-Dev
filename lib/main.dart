import 'package:flutter/material.dart';
import 'package:flutter_application_3/calculator_page.dart';
import 'package:flutter_application_3/calculator_ste.dart';
import 'package:flutter_application_3/login_page.dart';
import 'package:flutter_application_3/pages/login_clone_fix.dart';
import 'package:flutter_application_3/tugasloginui.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
      home: KalkulatorPage(),
    );
  }
}

