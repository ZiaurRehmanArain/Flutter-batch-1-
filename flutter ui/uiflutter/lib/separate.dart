import 'package:flutter/material.dart';

class separateBuilder extends StatelessWidget {
  const separateBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
        separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
        itemCount: 20);
  }
}
