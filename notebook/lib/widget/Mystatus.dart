import 'package:flutter/material.dart';

class Mystatus extends StatelessWidget {
  const Mystatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.red),
                        title: Text("My status"),
                        subtitle: Text("top to status update"),
                        // trailing: Text("2/10/2023"),
                      );
  }
}