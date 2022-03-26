import 'package:flutter/material.dart';
import 'package:myproject/Screens/home.dart';

class Payments extends StatefulWidget {
  const Payments({ Key? key }) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: IconButton(
             onPressed: (){
                Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Home()));
             },
             icon: Icon(Icons.arrow_back),
      ),
      title: Text("Pay with Credit Card"),
      ),
      
    );
  }
}