import 'dart:convert';
import 'package:flutter_application_3/Routes.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class LoginController extends GetxController{
    
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    var isLoading = false.obs;

    //method hit API
    void login() async{
      if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
        Get .snackbar("Error", "username dan harus terisi");
      }else{

        try{
          isLoading.value = true; 
          final url = Uri.parse("https://mediadwi.com/api/latihan/login");

          final response = await http.post(url, body: {
            "username" : txtUsername.text.toString(),
            "password" : txtPassword.text.toString(),
          });

          isLoading.value = false;
          if(response.statusCode == 200){
            //ambil json pindah ke main menu
            final data = jsonDecode(response.body);
            if(data['status'] == true){
              Get.snackbar("Berhasil", data['message']);
              Get.offNamed(Routes.menuDrawer);
            }else{
              Get.snackbar("Gagal", data['message']); 
            }
          }else{
            Get.snackbar("Error", "Cek Internet Connection");
          }

        }catch (e) 
        {
          Get.snackbar("Error", e.toString());
          print(  "Error : ${e.toString()}");
        }
      }
    }
}