import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, ind) => ListTile(
              leading: CircleAvatar(backgroundColor: Colors.yellow),
              title: Text("zia"),
              subtitle: Text("message"),
              trailing: Text("2/10/2023"),
            ));
  }
}
