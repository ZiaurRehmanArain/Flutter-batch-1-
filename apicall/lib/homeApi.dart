import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homeApi extends StatefulWidget {
  const homeApi({super.key});

  @override
  State<homeApi> createState() => _homeApiState();
}

class _homeApiState extends State<homeApi> {
  List<dynamic> productData = [];

  Future<void> fetchdata() async {
    
    // ignore: avoid_print
    print('user calling ');

    

    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    productData = jsonDecode(response.body);
    setState(() {
      // debugPrint(productData.toString());
    });
    // final bodys=json.decode(response.body);
  }
  final data = 'zia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('api $data'),
      ),
      body: ListView.builder(
          itemCount: productData.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(productData[index]['id'].toString()),
                subtitle: Text(productData[index]['title'].toString()),
                leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(productData[index]['image'].toString())),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchdata();
        },
        child: Text('api call'),
      ),
    );
  }
}
