import 'package:flutter/material.dart';
import 'package:notebook/chat.dart';
import 'package:notebook/screen/callScreen.dart';
import 'package:notebook/screen/statusScreen.dart';

class homScreen extends StatelessWidget {
  const homScreen({super.key});

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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homScreen()));
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
                    child:
                        Text('Status', style: TextStyle(color: Colors.white))),
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
                    child: Text('call', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
          Expanded(child: chat()),
        ],
      ),
    );
  }
}
