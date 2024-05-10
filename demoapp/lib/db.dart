import 'package:sqflite/sqflite.dart' as sql;

class SQLhelper {

  static Future<void> TableCreate(sql.Database database) async {
     await database.execute("""create table items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      title TEXT NOT NULL,
      description TEXT NOT NULL,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )""");  }

 static Future<sql.Database> db() async {
    return sql.openDatabase("noteapp.db", version: 1,
        onCreate: (sql.Database database, int version) async {
      await TableCreate(database);
    });
  }

  

  static Future<int> insertData(String title,String description) async {
     final db=await SQLhelper.db();
     final data={"title":title,"description":description};
     print("data in db");
     final id=await db.insert("items", data);
     return id;
  }

  static Future<List<Map<String,dynamic>>> getDatas()async{
   var db= await SQLhelper.db();
   return await db.query("items");

  }

  static Future<List<Map<String,dynamic>>> getData(int id)async{
   var database= await SQLhelper.db();
   return await database.query("items",where: 'id=?',whereArgs: [id],limit: 1);

  }


  static Future<int> dataUpdate(int id, String title,String description) async {
    var database=await SQLhelper.db();
    var data={
      "title":title,
      "description":description
    };
    return await database.update("items", data,where: 'id=?',whereArgs: [id]);
  }



  static Future<void> deleteData(int id) async {
    var database=await SQLhelper.db();
   try{
    await database.delete('items',where: 'id=?',whereArgs: [id]);

   }catch(e){
print("somthing want wrong   $e");    

   }
  }

  
}
