import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
       TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myhint: "Input Username",
              txtController: TextEditingController(),
              radius: 10, inputFormatters: [],
            )
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(obscureText: true, decoration: InputDecoration(hint: Text("Input Password")))
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
           ElevatedButton(onPressed: (){}, child: Text("Login", style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: Colors.red))),
                ElevatedButton(onPressed: (){}, child: Text("Register", style: TextStyle(fontSize: 16, 
                fontWeight: FontWeight.bold, 
                color: Colors.cyan))),
          ])
        ]
      ),
    );
  }
}