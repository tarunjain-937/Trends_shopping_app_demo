import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trends/Screens/dashBord_Screen/DeshBoard.dart';
import 'package:trends/Screens/forgotPassword_Screen/ForgotPassword_Screen.dart';
import 'package:trends/Screens/login_Screen/Login_Screen.dart';
import 'package:trends/Screens/signUp_Screen/SignUp_Screen.dart';
import 'package:trends/Screens/splash_Screen/Splash_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      builder: (context, child) {
        return  GetMaterialApp(
          title: "Trends",
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          defaultTransition: Transition.cupertino,
          getPages: [
            GetPage(name: "/", page: ()=> const Splash_Screen()),
            GetPage(name: "/login", page: ()=>const Login_Screen()),
            GetPage(name: "/signUp", page: ()=> const SignUp_Screen()),
            GetPage(name: "/forgotPassword", page: ()=> const ForgotPassword_Screen()),
            GetPage(name: "/dashboard", page: ()=> const DeshBoard()),
          ],
        );
      },
    );
  }
}
