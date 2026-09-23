import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Calculator Page")),
        body: Column(
      children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(hint: Text("Input First Number"))
            )
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hint: Text("Input Second Number"))
            )
          ),
          Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
          child : Row(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
           ElevatedButton(onPressed: (){}, child: Text("+", style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: Colors.red))),
                ElevatedButton(onPressed: (){}, child: Text("×", style: TextStyle(fontSize: 16, 
                fontWeight: FontWeight.bold, 
                color: Colors.cyan))),
                ElevatedButton(onPressed: (){}, child: Text("-", style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: Colors.red))),
                ElevatedButton(onPressed: (){}, child: Text("÷", style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: Colors.red))),
          ])),
          AppBar(
            title: Text("Result :"),
            centerTitle: true
            
          ),
          ElevatedButton(onPressed: (){}, child: Text("Reset", style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: const Color.fromARGB(255, 7, 7, 7)))),
          
        ]
        )
    );
  }
}