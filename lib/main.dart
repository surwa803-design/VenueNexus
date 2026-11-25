import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:venue_nexses/screens/authentication/login.dart';
import 'package:venue_nexses/screens/routes/app_routes.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
     initialRoute:AppRoutes.Home ,
      getPages: AppRoutes.Pages,
     
    );
  }
}