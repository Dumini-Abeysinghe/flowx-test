import 'package:flutter/material.dart';
import 'signin_screen.dart';

class startScreen extends StatelessWidget{
  const startScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> const signInScreen()),
          );
        },
        child: Image.asset("assets/images/start.jpg"),
      ),
     ),
    );
  }
}