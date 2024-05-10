import 'package:firstfirebase/screen/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sign up ")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: TextField(
                controller: name,
                decoration: InputDecoration(
                    // contentPadding: EdgeInsets.only(left: 20),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.ac_unit_outlined),
                    ),
                    hintText: 'Enter Name',
                    label: Text('Name'),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.deepPurple)))),
          ),
          Container(
            // padding: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),

            child: TextField(
                controller: email,
                decoration: InputDecoration(
                  contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.remove_red_eye),
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
            print(name.text);
            print(email.text);
            print(password.text);
            name.text="";
            email.text="";
            password.text="";
            setState(() {
              
            });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
