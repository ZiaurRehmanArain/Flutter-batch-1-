import 'package:flutter/material.dart';
import 'package:notebook/chat.dart';
import 'package:notebook/screen/homeScreen.dart';
import 'package:notebook/screen/statusScreen.dart';

class callScreen extends StatelessWidget {
  const callScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.menu, color: Colors.white),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.teal,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homScreen()));
                      },
                      child: Text(
                        'Chat',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 80,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => statusScreen()));
                      },
                      child: Text('Status',
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    width: 80,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => callScreen()));
                      },
                      child:
                          Text('call', style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, ind) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.call),
                        ),
                        title: Text("zia"),
                        subtitle: Text("message"),
                        // trailing: Text("2/10/2023"),
                      )),
            ),
          ],
        ));
  }
}
