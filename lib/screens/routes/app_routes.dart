import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/admin/dashboard.dart';
import 'package:venue_nexses/screens/authentication/login.dart';
import 'package:venue_nexses/screens/authentication/register.dart';
import 'package:venue_nexses/screens/routes/auth_middleware.dart';
import 'package:venue_nexses/screens/website/HomePage.dart';

class AppRoutes {
  static const Home = "/";
   static const register="/register";
   static const login = "/login";
   static const dashboard = "/dashboard";
   static final Pages =[
    GetPage(
      name: Home,
      page:()=>HomePage(),
     ),
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
