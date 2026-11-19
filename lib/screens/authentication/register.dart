import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/authentication/login.dart';
import 'package:venue_nexses/screens/routes/app_routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color(0xFFF3EFE6), 
        appBar: AppBar(
            backgroundColor: Color(0xFF651C32),
               elevation: 0,
              centerTitle: false,

              title: const Text(
              'VenueNexus',
              style: TextStyle(
                color: Color(0xFFFAF7F2),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
             ),
         ),
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
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                   Text(
                     "Create Account",
                     style: TextStyle(
                       color: Color(0xFF651C32),
                       fontSize: 30,
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Text(
                     "Fill in the details below to get started",
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 5,
                   ),
                   Text("Full Name"),
                   TextField(
                      decoration: InputDecoration(
                    
                      hintText: "Enter you name",
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
              height: 15,
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
               height: 15,
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
               height: 15,
             ),
                  Text("Confirm Password",
                   style: TextStyle(
                   color: Colors.black,
                  ),),
                  TextField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                    
                  hintText: "Confirm your Password",
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
             ElevatedButton(onPressed: (){}, 
             style: ElevatedButton.styleFrom(
               backgroundColor: const Color(0xFF651C32), // Button background color
               foregroundColor: const Color(0xFFFAF7F2), 
               fixedSize: Size( 550, 50),
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded button corners
               ),
             ),
              child: Text("Register",),

             ),
             SizedBox(
               height: 15,
             ),
             Row(
              children: const [
               Expanded(
                 child: Divider(
                 color: Colors.black26, 
                 thickness: 1, 
                 ),   
                ),
             
                
              Padding(
               padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                "OR",
               style: TextStyle(
                color: Color(0xFF651C32),  
                fontWeight: FontWeight.w600,
                fontSize: 14,
               ),
              ),
             ),
             
                          
                Expanded(
                  child: Divider(
                  color: Colors.black26,
                  thickness: 1,
                  ),
                 ),
                ],
               ),
                 SizedBox(
                   height: 20,
                  ),
                                
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text(
                      "Already have an account? Login",
                       style: TextStyle(
                      color: Color(0xFF651C32),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                 ),
               ],
             ), 
        
          
          ]
         )
        )
       )
      )
    );
  }
}