import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Your Wishlist is empty!",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 24.sp),),
                SizedBox(
                  height: 4.h,
                ),
                Text("Tap Here, to add products to your Wishlist ",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16.sp),),
                SizedBox(
                  height: 4.h,
                ),
                ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(5.0.h),
                      backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add to your Wishlist",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(width: 10.w),
                        Icon(Icons.favorite_outline,size: 20.sp,),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
