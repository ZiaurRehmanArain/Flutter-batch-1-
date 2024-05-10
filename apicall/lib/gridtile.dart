import 'package:flutter/material.dart';

class GridTiles extends StatelessWidget {
  const GridTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1),
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        addSemanticIndexes: true,
        padding: EdgeInsets.all(5),
        children: [
          Card(
            child: GridTile(
                header: Text('Header text'),
                footer: Text('Footer text'),
                child: Image.network(
                    'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg')),
          ),
          Card(
            child: GridTile(
                header: Text('Header text'),
                footer: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Footer text',
                      style: TextStyle(),
                    )),
                child: Image.network(
                    'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg')),
          ),
          Card(
            child: GridTile(
                header: Text('Header text'),
                footer: Text('Footer text'),
                child: Image.network(
                    'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg')),
          ),
          Card(
            child: GridTile(
                header: Text('Header text'),
                footer: Text('Footer text'),
                child: Image.network(
                    'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg')),
          ),
          GridTile(
              header: Text('Header text'),
              footer: Text('Footer text'),
              child: Image.network(
                  'https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg')),
        ],
      ),
    );
  }
}
