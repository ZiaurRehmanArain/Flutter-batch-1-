import 'package:flutter/material.dart';

class girdviewBuilder extends StatefulWidget {
  const girdviewBuilder({super.key});

  @override
  State<girdviewBuilder> createState() => _girdviewBuilderState();
}

class _girdviewBuilderState extends State<girdviewBuilder> {
  var selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gird view '),
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            // Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Hello"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, ind) => Card(
              shadowColor: Colors.grey,
              elevation: 10,
              child: GridTile(
                child: Container(
                    height: 10,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx8VbPC5gqFDxFGfQy4YyxQEEhAAiSvqRAir83B2Ae&s')),
                footer: Text(
                  'flutter logo',
                  textAlign: TextAlign.center,
                ),
              ))),
    );
  }
}
