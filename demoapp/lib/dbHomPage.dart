import 'package:demoapp/db.dart';
import 'package:flutter/material.dart';

class dbHomePage extends StatefulWidget {
  const dbHomePage({super.key});

  @override
  State<dbHomePage> createState() => _dbHomePageState();
}

class _dbHomePageState extends State<dbHomePage> {
  var _notedata = [];
  var boolss = true;

  Future<void> getdatas() async {
    print("data is add");
    _notedata = await SQLhelper.getDatas();
    boolss = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdatas();
  }

  TextEditingController _title = TextEditingController();
  TextEditingController _description = TextEditingController();

  Future<void> _addItem() async {
    print("data is add");
    await SQLhelper.insertData(
        _title.text.toString(), _description.text.toString());
        getdatas();
  }

  Future<void> _updateItem(id) async {
    await SQLhelper.dataUpdate(
        id, _title.text.toString(), _description.text.toString());
        getdatas();
  }

   Future<void> _deleteData(id)async{
    await SQLhelper.deleteData(id);
    getdatas();

   }
  Future<void> showForm(int? id) async {
    if (id != null) {
      var existdata = _notedata.firstWhere((element) => element['id'] == id);
      _title.text = existdata['title'];
      _description.text = existdata['description'];
    }

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        
        builder: (_) => Container(
          // height: MediaQuery.of(context).size.height*0.5,
          //  height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _title,
                    decoration: InputDecoration(hintText: "title"),
                  ),
                  TextField(
                    controller: _description,
                    decoration: InputDecoration(hintText: "description"),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await _addItem();
                        }
                        if (id != null) {
                          await _updateItem(id);
                        }
                        _title.text = "";
                        _description.text = "";
                        Navigator.pop(context);
                      },
                      child: Text(id != null ? "Update" : "create data"))
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homPage")),
      body: ListView.builder(
          itemCount: _notedata.length,
          itemBuilder: ((context, index) {
            return boolss
                ? Text("no data")
                : Card(
                  color: Colors.lightGreenAccent,
                    child: ListTile(
                      
                      title: Text(_notedata[index]['title'].toString()),
                      subtitle: Text(_notedata[index]['description'].toString()),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(children: [
                          IconButton(
                              onPressed: () {
                                showForm(_notedata[index]['id']);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                _deleteData(_notedata[index]['id']);
                              },
                              icon: Icon(Icons.delete))
                        ]),
                      ),
                    ),
                  );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showForm(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
