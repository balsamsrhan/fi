import 'package:flutter/material.dart';

import 'BookMark.dart';
import 'Home1.dart';
import 'Menu.dart';
import 'Person.dart';
import 'Work.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_Home();
  
}
class _Home extends State<Home>{
  List<Widget> screens = [Home1(),Person(),Menu(),BookMark(),Work()];
  int initIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[initIndex],
      backgroundColor: Colors.white10,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: initIndex,
        selectedItemColor: Color(0XFF32A4C8),
        onTap: (value){
          setState(() {
            initIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(label: "",icon: Icon(Icons.home_filled,color: Colors.black,),activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "",icon: Icon(Icons.person,color: Colors.black,),activeIcon: Icon(Icons.person)),
          BottomNavigationBarItem(label: "",icon: Icon(Icons.menu,color: Colors.black,),activeIcon: Icon(Icons.menu)),
          BottomNavigationBarItem(label: "",icon: Icon(Icons.bookmark,color: Colors.black,),activeIcon: Icon(Icons.bookmark)),
          BottomNavigationBarItem(label: "",icon: CircleAvatar(backgroundImage: AssetImage("images/work.png")),activeIcon: CircleAvatar(backgroundImage: AssetImage("images/work.png")) )
        ],
      ),

    );
  }
  
}