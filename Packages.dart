import 'package:flutter/material.dart';

class Packages extends StatefulWidget {
  const Packages({ Key? key }) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
         appBar: AppBar(
           
        backgroundColor: Colors.red,
        title: Text("Packages"),
      bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Sedan",
              ),
            ],
      ),
      ),
      body:Column(
        children: [
        
       TabBarView(
          children: [
            Text(''),      
          ],
        ),
        ],
      ), 
    ),
    );
  }
}