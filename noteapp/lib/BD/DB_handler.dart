import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:noteapp/Model/Notes.dart';
import 'package:path/path.dart';
// import 'dart:io' as io;

class DBhelper {

  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return _db;
  }

  initDatabase() async {
    //   //  WidgetsFlutterBinding.ensureInitialized();
    // io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    // String path = join(documentDirectory.path, "notes.db");
    // print(documentDirectory);
    // // var db = await openDatabase(path, onCreate: _onCreate, version: 1);
    // // return db;
  //    final directory = await getApplicationDocumentsDirectory();
  // // print(directory.path);
  //   //  final documentDirectory = await getApplicationDocumentsDirectory();
  //   String path = join(directory.path, 'notes.db');
  // final directory = await getApplicationDocumentsDirectory();
  // final filePath = join(directory.path, 'my_file.txt');

    var db = await openDatabase("filePath", version: 1, onCreate: _onCreate );
    return db;
  }

  _onCreate(Database db, int version) async {
     await  db.execute(
      "CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL,age INTEGER NOT NULL, description TEXT NOT NULL, email TEXT)",
    );}

Future<NotesModel> insert(NotesModel notesModel) async {
    var dbClient = await db;
    await dbClient!.insert('notes', notesModel.toMap());
    return notesModel;
  }

  // Future<NotesModel> insert(NotesModel notesModel) async {
  //   var dbclient= await db;
  //   await dbclient!.insert("notes", notesModel.toMap());
  //   return notesModel;

  // }
}
