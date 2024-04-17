import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/appBackground.png"),fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded( flex: 1,
                    child: SizedBox()),
                Text("Login to Trends",
                    style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 10.h),
                Form(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: const BorderSide(color: Colors.black,width: 2)),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: const BorderSide(color: Colors.black,width: 2)),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                            filled: true,
                            hintText: "Email",
                            hintStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),
                            fillColor: Colors.blueGrey[100],
                          ),
                        ),

                        SizedBox(height: 8.h),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: const BorderSide(color: Colors.black,width: 2)),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: const BorderSide(color: Colors.black,width: 2)),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                            filled: true,
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),
                            fillColor: Colors.blueGrey[100],
                          ),
                        ),

                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(onPressed: (){
                            // Forgot Password Screen Navigation
                          },child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue,fontSize: 14.sp),)),
                        ),

                        // Login Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                            elevation: MaterialStatePropertyAll(2.0),
                            // hex_colors: replace hash "#" symbol with "0xff" and them write the hash code of the color
                              ),
                              onPressed: (){
                            // Login Button: Function declaration
                                Get.toNamed("/signUp");
                          }, child: Text("Login", style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.normal),)),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("or,Create new account to ",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 14.sp),),
                            InkWell(
                                onTap: (){
                                  Get.toNamed("/signUp");
                                },
                                child: Text("Register",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueAccent,fontSize: 14.sp),))
                          ],
                        ),

                        SizedBox(height: 20.h),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
