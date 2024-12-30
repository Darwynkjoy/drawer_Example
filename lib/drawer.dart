import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget{
@override
  State<DrawerExample> createState()=> _drawerState();
}

class _drawerState extends State<DrawerExample>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      drawer: 
      Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text("Menu",style: TextStyle(fontSize: 20,color: Colors.white),),),
            
            ListTile(
              leading: Icon(Icons.home,),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings,),
              title: Text("Settings"),
            ),
          ],
        ),
        ),
        body: Center(
          child: Text("DrawerExample",style: TextStyle(fontSize: 25),),
        ),
    );
  }
}