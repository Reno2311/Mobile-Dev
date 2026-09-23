import 'package:flutter/services.dart';
import 'package:flutter_application_3/Controller/Calculatorste_controllers.dart';
import 'package:flutter_application_3/components/my_textfield.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class KalkulatorPage extends StatelessWidget {
    KalkulatorPage({super.key});

    final controller = Get.put(CalculatorController());
    @override
    Widget build(BuildContext context) {
      TextEditingController txtangka1 = TextEditingController();
      TextEditingController txtangka2 = TextEditingController();

      bool proteksi(){
      if(txtangka1.text.isEmpty || txtangka2.text.isEmpty){
        Get.snackbar(
          "peringatan",
          "Angka tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM,
          );
          return false;
      }
      return true;
    }
        return Scaffold(
          appBar: AppBar(title: Text("Kalkulator Page"), centerTitle: true,),
          body: Column(
            children: [
              MyTextfield(
                
                myhint: "Angka 1",
                txtController: txtangka1,
                radius: 10,
                keyboardType: TextInputType.number,
                inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              ),
              const SizedBox(height: 10),
              MyTextfield(
                myhint: "Angka 2",
                txtController: txtangka2,
                radius: 10,
                keyboardType: TextInputType.number,
                inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              ),
              const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [  
                  ElevatedButton(
                  onPressed: () {
                  if(!proteksi()) return;
                  double angka1 = double.parse(txtangka1.text);
                  double angka2 = double.parse(txtangka2.text);
                  controller.tambah(angka1, angka2);
                },
                child: Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  if(!proteksi()) return;
                  double angka1 = double.parse(txtangka1.text);
                  double angka2 = double.parse(txtangka2.text);
                  controller.kurang(angka1, angka2);
                },
                child: Text("Kurang"),
              ),
              ElevatedButton(
                onPressed: () {
                  if(!proteksi()) return;
                  double angka1 = double.parse(txtangka1.text);
                  double angka2 = double.parse(txtangka2.text);
                  controller.kali(angka1, angka2);
                },
                child: Text("Kali"),
              ),
              ElevatedButton(
                onPressed: () {
                  if(!proteksi()) return;
                  double angka1 = double.parse(txtangka1.text);
                  double angka2 = double.parse(txtangka2.text);
                  controller.bagi(angka1, angka2);
                },
                child: Text("Bagi"),
              ),


              ]),
              const SizedBox(height: 20),
              Obx(
              () => Text(
              controller.hasilhitung.toString(),
              style: TextStyle(fontSize: 20),
              ),
             ),
            ],
          ),  
        );
    }
}

