import 'package:flutter/material.dart';

class Sliverappbar extends StatelessWidget {
  const Sliverappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver app',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            backgroundColor: Colors.amber,
            expandedHeight: 200,
            floating: true,
            flexibleSpace: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_HhLtZlQmjgvVLRYq98PkIyYGH8_Bfuh70bfVPWQT&s',fit:BoxFit.cover,),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
            
            (context,ind)=>ListTile(title: Text('zia '),),
            childCount: 1000
            
          

          ))

        ],
      ),
    );
  }
}