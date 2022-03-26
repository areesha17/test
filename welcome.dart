import 'package:flutter/material.dart';
import 'package:myproject/Screens/login.dart';
import 'package:myproject/Screens/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[ 
          Stack(
        children:[
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            color: Color.fromARGB(255, 206, 193, 193),
          ),
          Positioned(
            top: 250,
            left: 130,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 60,
              child: Icon(Icons.person,color: Colors.white,size: 55,),),
              ),
        //   Positioned(
        //     top: 400,
        //     left: 130,
        //     child: Text("Welcome, Guest!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
         ],
      ),
      SizedBox(height: 4,),
      Center(child: Text("Welcome, Guest!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      SizedBox(height:100,),
      ElevatedButton(
            onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
            },
             child: Text('Log In',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
            SizedBox(
                height: 5,
              ),
              
          ElevatedButton(
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
            },
             child: Text('Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
      ],
      ),
    );
  }
}