import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/admin/dashboard.dart';
import 'package:venue_nexses/screens/authentication/login.dart';
import 'package:venue_nexses/screens/authentication/register.dart';
import 'package:venue_nexses/screens/routes/auth_middleware.dart';
class AppRoutes {
   static const register = "/";
   static const login = "/login";
   static const dashboard = "/dashboard";
   static final Pages =[
     GetPage(
      name: register,
      page:()=>RegisterScreen(),
      ),
      GetPage(
        name: login, 
        page:()=> LoginScreen(),
      ),
      GetPage(
        name:  dashboard, 
        page: ()=>DashboardScreen(),
        middlewares: [AuthMiddleware()],
        ),

   ];
}
