import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Shopping Cart ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 24.sp),),
                  SizedBox(width: 10.w),
                  CircleAvatar(
                    radius:18.r,
                    child: Text("2",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp),),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10.r))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping address",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                          IconButton(onPressed: (){},
                          icon: Icon(Icons.edit,size: 16.sp),
                          color: Colors.white,
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Text("H.no.608 Shiv city, beside of IPS college, Rau, Indore M.P.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              // Cart item 1
              Row(
                children: [
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      color: Colors.grey[300],
                      image: DecorationImage(image: AssetImage("assets/images/productImages/newItems/img.png"))
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("JADE BLACK WITH WHITE EMBROIDERED LUXURIOUS LINEN DESIGNER SHIRT",
                            style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal,color: Colors.black,overflow:TextOverflow.ellipsis),
                            maxLines: 3),
                        SizedBox(height: 5.h),
                        Text("Rs.1500/-",
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black,overflow:TextOverflow.ellipsis),
                            maxLines: 1),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add,size: 18.sp),
                              color: Colors.white,
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              width: 60.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                color: Colors.blueGrey[100]
                              ),
                              child: Center(child: Text("1",style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w500),)),
                            ),
                            SizedBox(width: 5.w),
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.remove,size: 18.sp),
                              color: Colors.white,
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),


              SizedBox(height: 8.h),

              // Cart item 1
              Row(
                children: [
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        color: Colors.grey[300],
                        image: DecorationImage(image: AssetImage("assets/images/productImages/newItems/img.png"))
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("JADE BLACK WITH WHITE EMBROIDERED LUXURIOUS LINEN DESIGNER SHIRT",
                            style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal,color: Colors.black,overflow:TextOverflow.ellipsis),
                            maxLines: 3),
                        SizedBox(height: 5.h),
                        Text("Rs.1500/-",
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black,overflow:TextOverflow.ellipsis),
                            maxLines: 1),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.add,size: 18.sp),
                              color: Colors.white,
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              width: 60.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                  color: Colors.blueGrey[100]
                              ),
                              child: Center(child: Text("1",style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.w500),)),
                            ),
                            SizedBox(width: 5.w),
                            IconButton(onPressed: (){},
                              icon: Icon(Icons.remove,size: 18.sp),
                              color: Colors.white,
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA)),),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              Expanded(child: SizedBox(height: 8.h)),

              Row(
                children: [
                  Text("Total: 3000/- Rs.",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp),),
                  Expanded(child: SizedBox(width: 5.w,)),
                  ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(0xff1D24CA))
                      ),
                      child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.white),))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
