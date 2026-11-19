import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/admin/dashboard.dart';
import 'package:venue_nexses/screens/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EFE6), 
       body: Center(
       child: Container(
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: Colors.white,
           ),
           height: 700,
           width: 600,
           child: Padding(
             padding: const EdgeInsets.all(30.0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text(
                       "Welcome Back",
                       style: TextStyle(
                         color: Color(0xFF651C32),
                         fontSize: 30,
                       ),
                     ),
                    
                      SizedBox(
              height: 40,
             ),
              Text("Phone number or email",
              style: TextStyle(
               color: Colors.black,
              ),),
            
               TextField(
                decoration: InputDecoration(
                hintText: "Enter your email",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                 ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                 borderSide: const BorderSide(color: Color(0xFF651C32), width: 2),
                ),
                ),
             ),
             
             
                SizedBox(
               height: 40,
             ),
                  Text("Password",
                  style: TextStyle(
                   color: Colors.black,
                  ),),
                  TextField(
               
                  decoration: InputDecoration(
                    
                  hintText: "Enter your password",
                   
             
                   filled: true,
                   fillColor: Colors.white,
                   border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   ),
                   focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: const BorderSide(color: Color(0xFF651C32), width: 2),
                 ),
                ),
               ),
               SizedBox(
                height: 30,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   GestureDetector(
                    onTap: (){},
                    child: Text("Forget Password?",
                    style: TextStyle(
                      color: Color(0xFF651C32),
                      fontSize: 20,
                    ),
                    ),
                   ),
                 ]
               ),
                    SizedBox(
               height: 30,
             ),
             ElevatedButton(onPressed: (){
              Get.toNamed(AppRoutes.dashboard);
             }, 
               style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF651C32), // Button background color
                  foregroundColor: const Color(0xFFFAF7F2), 
                  fixedSize: Size( 550, 50),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded button corners
                 ),
                ),
                child: Text("Login",),

                   ),
                 
              ],
             ),
           ),
        ),
      ),
    );
  }
}