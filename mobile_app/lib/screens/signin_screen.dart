// import 'package:flutter/material.dart';
// import 'signup_screen_1.dart';
// import 'dashboard_screen.dart';

// class signInScreen extends StatelessWidget {
//   const signInScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/images/logoN.jpg", width: 150),
//             const SizedBox(height: 20),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "abc123@gmail.com",
//                 prefixIcon: Icon(Icons.email),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 15),
//             const TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: "Your password",
//                 prefixIcon: Icon(Icons.lock),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
            
//             SizedBox(
//               width: 250, 
//               height: 50, 
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 3, 23, 134),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12), 
//                   ),
//                   minimumSize: const Size(double.infinity, 50),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const dashboardScreen()),
//                   );
//                 },
//                 child: const Text("SIGN IN", style: TextStyle(color: Colors.white)),
//               ),
//             ),

//             const SizedBox(height: 10),
//             const Text("OR"),
//             const SizedBox(height: 10),
          
//             OutlinedButton.icon(
//               style: OutlinedButton.styleFrom(
//                 minimumSize: const Size(250, 30),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//               ),
//               ),

//               icon: Image.asset("assets/images/google.png", width: 24),
//               label: const Text("Login with Google"),
//               onPressed: () {},
//             ),
            
//             const SizedBox(height: 20),
            
//             // Navigation to sign-up screen
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const signUpScreen1()),
//                 );
//               },
//               child: const Text(
//                 "Don't have an account? Register here!",
//                 style: TextStyle(color: Color.fromARGB(255, 3, 23, 134)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'signup_screen_1.dart';
import 'dashboard_screen.dart';

class signInScreen extends StatelessWidget {
  const signInScreen({super.key});

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
            
            // Email field
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                hintText: "abc@gmail.com",
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Password field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                hintText: "Your Password",
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // Sign in button
            SizedBox(
              width: 250, 
              height: 50, 
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login, color: Colors.white), 
                label: const Text("SIGN IN", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 23, 134),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(200, 50), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  dashboardScreen()),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),
            const Text("OR"),
            const SizedBox(height: 10),

            // Google login button
            OutlinedButton.icon(
              icon: Image.asset("assets/images/google.png", width: 24),
              label: const Text("Login with Google"),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
            ),
            
            const SizedBox(height: 20),
            
            // Navigation to sign-up screen
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signUpScreen1()),
                );
              },
              child: const Text(
                "Don't have an account? Register here!",
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 23, 134),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
