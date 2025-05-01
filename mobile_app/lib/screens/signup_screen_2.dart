import 'package:flutter/material.dart';
import 'package:mobile_app/screens/dashboard_screen.dart';

class signUpScreen2 extends StatelessWidget {
  const signUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logoN.jpg", width: 150), 
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(
              hintText: "Email", 
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email,color: Colors.grey),
            )
            ),
            const SizedBox(height: 10),
            const TextField(decoration: InputDecoration(
              hintText: "Contact No", 
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone,color: Colors.grey),
              )
              ),
            const SizedBox(height: 10),
            const TextField(obscureText: true, 
            decoration: InputDecoration(
               hintText: "Your password",
               hintStyle: const TextStyle(color: Colors.grey),
               border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.lock,color: Colors.grey),
               )
               ),
            const SizedBox(height: 10),
            const TextField(obscureText: true, 
            decoration: InputDecoration(
              hintText: "Confirm password",
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock,color: Colors.grey),
              )
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 23, 134),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  dashboardScreen()),
                );
              },
              child: const Text("SIGN UP", 
              style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text("Already have an account? Sign in here!", 
              style: TextStyle(
                color: Color.fromARGB(255, 3, 23, 134),
                fontWeight: FontWeight.bold,)),
            ),
          ],
        ),
      ),
    );
  }
}
