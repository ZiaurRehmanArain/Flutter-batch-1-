import 'package:flutter/material.dart';
import 'package:noteapp/BD/DB_handler.dart';
import 'package:noteapp/Model/Notes.dart';
import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DBhelper? dbhelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbhelper = DBhelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NoteApp'),
        leading: Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dbhelper!
              .insert(NotesModel(
                id:1,
                  title: "title 1",
                  age: 5,
                  description: "description  1",
                  email: "email first"))
              .then((value) => print("data is add"))
              .onError((error, stackTrace) => print(error.toString()));
        },
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 20,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        // disabledElevation: 200,
      ),
    );
  }
}
