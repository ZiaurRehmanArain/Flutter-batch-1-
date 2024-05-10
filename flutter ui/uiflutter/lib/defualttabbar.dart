import 'package:flutter/material.dart';
import 'package:uiflutter/circleProgers.dart';
import 'package:uiflutter/gridviewss.dart';
import 'package:uiflutter/separate.dart';

class defaulttabar extends StatefulWidget {
  const defaulttabar({super.key});

  @override
  State<defaulttabar> createState() => _defaulttabarState();
}

class _defaulttabarState extends State<defaulttabar> {
  int selectindex = 0;

  void topitem(int index) {
    selectindex = index;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigation Bar'),
          bottom: const TabBar(
            labelColor: Colors.yellow,
            indicatorPadding: EdgeInsets.all(2),
            unselectedLabelColor: Colors.red,
            tabAlignment: TabAlignment.center,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Settings', icon: Icon(Icons.settings)),
              Tab(text: 'About', icon: Icon(Icons.info)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            separateBuilder(),
            girdviewbuilder(),
            circle(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: topitem,
          
            currentIndex: selectindex,
            backgroundColor: Colors.transparent,
            selectedFontSize: 20,
            unselectedFontSize: 15,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            iconSize: 5,
            
            
            showUnselectedLabels: true,
          

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.star_border_outlined), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: 'home'),
            ]),
      ),
    );
  }
}
