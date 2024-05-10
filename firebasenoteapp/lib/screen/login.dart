import 'package:firebasenoteapp/screen/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          Container(
            // padding: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),

            child: TextField(
                controller: email,
                decoration: InputDecoration(
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.email),
                    ),
                    hintText: 'Enter Email',
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.deepPurple)))),
          ),
          Container(
            // padding: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),

            child: TextField(
                controller: password,
                decoration: InputDecoration(
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.email),
                    ),
                    hintText: 'Enter password',
                    labelText: 'password',
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.deepPurple)),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.deepPurple)))),
          ),
          ElevatedButton(onPressed: () {
            print(email);
            print(password);
             email.text="";
            password.text="";
            setState(() {
              
            });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
