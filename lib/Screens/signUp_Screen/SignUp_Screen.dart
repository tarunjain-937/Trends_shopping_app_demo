import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/signUp_Background.png"),fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250.h),
                Text("   Register to",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 20.sp),),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1D24CA),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8.r),bottomRight: Radius.circular(8.r))
                  ),
                  padding: EdgeInsets.all(8.sp),
                  child: Text(" Trends   ",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.bold,color: Colors.white,),),
                ),

                // signUp Credentials TextField
                SizedBox(height: 20.h),
                Form(
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
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
                            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off,size: 18.sp, color: Colors.black,)),
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
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),
                            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off,size: 18.sp, color: Colors.black,)),
                            fillColor: Colors.blueGrey[100],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) => (){},fillColor: const MaterialStatePropertyAll(Colors.black),),
                            Text("I have read terms and conditions",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 14.sp),)
                          ],
                        ),

                        // Register Button
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
                                Get.toNamed("/dashboard");
                              }, child: Text("Register", style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.normal),)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("already have an account? ",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 14.sp),),
                            InkWell(
                              onTap: (){
                                Get.back();
                              },
                                child: Text("Login",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueAccent,fontSize: 14.sp),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
