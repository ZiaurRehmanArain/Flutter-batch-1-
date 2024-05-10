import 'package:flutter/material.dart';
class second extends StatelessWidget {
  String data;
   second({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(data.toString()),



    );
  }
}