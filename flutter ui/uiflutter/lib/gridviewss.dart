import 'package:flutter/material.dart';

class girdviewbuilder extends StatefulWidget {
  const girdviewbuilder({super.key});

  @override
  State<girdviewbuilder> createState() => _girdviewbuilderState();
}

class _girdviewbuilderState extends State<girdviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      
      crossAxisCount: 2,
      children: List.generate(10, (index) =>Card(child: Container(width: 100,height: 100,),)
)
    );
  }
}
