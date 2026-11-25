import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/admin/admin_dashboard.dart';
import 'package:venue_nexses/screens/authentication/login.dart';
import 'package:venue_nexses/screens/authentication/register.dart';
import 'package:venue_nexses/screens/customer/customer_dashboard.dart';

class AppRoutes {
   static const register = "/";
   static const login = "/login";
   static const admin_dashboard = "/admin_dashboard";
   static const customer_dashboard = "/customer_dashboard";
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
        name: admin_dashboard, 
        page:()=> AdminDashboard(),
      ),
      GetPage
      (name: customer_dashboard, 
      page:()=>CustomerDashboard()),
      
   ];
}