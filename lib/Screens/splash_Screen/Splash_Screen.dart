import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 8.0.h,
              color: Colors.white,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(500.r)),
                  borderSide: BorderSide(width: 0.0.w, color: Colors.white)
              ),
              child: Padding(
                padding: EdgeInsets.all(40.0.sp),
                child: Image.asset("assets/images/applogo.png",width: 70.0.w, height: 70.0.h, fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 10.h),
            Text("Trends",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36.sp, color: Colors.black,letterSpacing: 0.25.w),
            ),
            Text("Make your own Fashion",
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
