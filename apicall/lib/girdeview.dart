import 'package:flutter/material.dart';

class girdesytem extends StatefulWidget {
  const girdesytem({super.key});

  @override
  State<girdesytem> createState() => _girdesytemState();
}

class _girdesytemState extends State<girdesytem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gird view'),
      ),
      body: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          // scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),

          children: [
            Card(
              shadowColor: Color.fromARGB(255, 171, 170, 172),
              color: Colors.cyan[200],
              elevation: 20,
              child: GridTile(
                header: Text('Header'),
                child: Image.network(
                    'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
                footer: Text('Footer'),
              ),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
            GridTile(
              header: Text('Header'),
              child: Image.network(
                  'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?cs=srgb&dl=pexels-pixabay-531880.jpg&fm=jpg'),
              footer: Text('Footer'),
            ),
          ]),
    );
  }
}
