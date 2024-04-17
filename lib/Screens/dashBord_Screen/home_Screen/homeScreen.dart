import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   var activeIndex = 0;

   var bannerImgURL = [
    "assets/images/banner/img.png",
    "assets/images/banner/img_1.png",
    "assets/images/banner/img_2.png",
  ];

   var popularBrandsImgURL = [
     "assets/images/popularBrands/img.png",
     "assets/images/popularBrands/img_1.png",
     "assets/images/popularBrands/img_2.png",
     "assets/images/popularBrands/img_3.png",
     "assets/images/popularBrands/img_4.png"
   ];

   var popularBrandsName = [
     "Zara","Mufti","Lewis","H&M","Peter England"
   ];

   Widget buildImage(String imageUrl, int index){
    return Container(
      width: 260.w,
      color: Colors.grey[300],
      child: Image.asset(imageUrl,fit: BoxFit.cover,),
    );
  }

   Widget buildIndicator(){
    return AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: bannerImgURL.length,
        effect: ExpandingDotsEffect(
          dotWidth: 10.w,
          dotHeight: 10.h,
          dotColor: Colors.grey,
          activeDotColor: const Color(0xff1D24CA),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // appBar here
                Row(
                  children: [
                    // profile picture
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.0.sp, color: Colors.white,),
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        color: Colors.grey[300]
                      ),
                      padding: EdgeInsets.all(4.sp),
                      child: CircleAvatar(
                        radius: 18.r,
                        backgroundImage: const AssetImage("assets/images/profile_Image.png"),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    // wishlist button
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1D24CA),
                        borderRadius: BorderRadius.all(Radius.circular(50.r))
                      ),
                      padding: EdgeInsets.only(bottom: 4.sp,top: 4.sp,right: 10.sp,left: 10.sp),
                      child: Row(
                        children: [
                          Icon(Icons.favorite,size: 14.sp,color: Colors.white),
                          SizedBox(width: 4.w),
                          Text("Wishlist", style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.normal,color: Colors.white),)
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[300])),
                        icon: Icon(Icons.message_rounded,size: 18.sp,color: const Color(0xff1D24CA),)),
                    IconButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[300])),
                        icon: Icon(Icons.settings,size: 18.sp,color: const Color(0xff1D24CA),)),
                  ],
                ),

                SizedBox(height: 10.h),
                Text(" Hello, Sneha!",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.sp,color: Colors.black),),

                // Carousel Slider here
                Column(
                  children: [
                    CarouselSlider.builder(
                        itemCount: bannerImgURL.length,
                        options: CarouselOptions(
                             height: 150.h,
                             autoPlay: true,
                             reverse: false,
                             autoPlayInterval: const Duration(seconds: 2),
                             enlargeStrategy: CenterPageEnlargeStrategy.height,
                             enableInfiniteScroll: true,
                             onPageChanged: (index, reason) => setState(
                                 ()=> activeIndex = index
                             ),
                        ),
                        itemBuilder: (context, index, realIndex) {
                          final imageUrl = bannerImgURL[index];
                          return buildImage(imageUrl, index);
                        },
                    ),

                    // dot indicator
                     SizedBox(height: 8.h),
                     buildIndicator(),
                  ],
                ),

                // Popular brands here
                SizedBox(height: 5.h),
                Text(" Popular Brands",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.sp,color: Colors.black),),
                SizedBox(
                  height: 115.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popularBrandsImgURL.length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50.r)),
                                  image: DecorationImage(image: AssetImage(popularBrandsImgURL[index]),fit: BoxFit.fill),
                                  color: Colors.grey[300],
                                  boxShadow: <BoxShadow>[BoxShadow(color: Colors.black45,blurRadius: 2.r,spreadRadius: 2.5.r)],
                                ),
                                height: 70.h,
                                width: 66.w,
                              ),
                              SizedBox(height: 5.h),
                              Text(popularBrandsName[index].toString(),style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black, fontSize: 14.sp),)
                            ],
                          ),
                        );
                      },
                  ),
                ),

                // New Items here
                Row(
                  children: [
                    Text(" New Items",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.sp,color: Colors.black),),
                    Expanded(child: SizedBox(width: 5.w)),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Text(" See All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.black),),
                          SizedBox(width: 5.w),
                          Icon(Icons.arrow_circle_right_rounded,size: 22.sp, color: const Color(0xff1D24CA),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularBrandsImgURL.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 170.w,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                border: Border.all(color: Colors.white,width: 3.sp),
                                color: Colors.grey[300],
                                image: DecorationImage(image: AssetImage("assets/images/productImages/newItems/img.png"),fit: BoxFit.fill),
                              ),
                            ),
                            Text("JADE BLACK WITH WHITE EMBROIDERED LUXURIOUS LINEN DESIGNER SHIRT",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal,color: Colors.black,overflow:TextOverflow.ellipsis),
                                maxLines: 3),
                            SizedBox(height: 5.h),
                            Text("Rs.1500/-",
                                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black,overflow:TextOverflow.ellipsis),
                                maxLines: 1),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Most popular Items here
                Row(
                  children: [
                    Text(" Most Popular",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.sp,color: Colors.black),),
                    Expanded(child: SizedBox(width: 5.w)),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Text(" See All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.black),),
                          SizedBox(width: 5.w),
                          Icon(Icons.arrow_circle_right_rounded,size: 22.sp, color: const Color(0xff1D24CA),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularBrandsImgURL.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 170.w,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                border: Border.all(color: Colors.white,width: 3.sp),
                                color: Colors.grey[300],
                                image: DecorationImage(image: AssetImage("assets/images/productImages/newItems/img.png"),fit: BoxFit.fill),
                              ),
                            ),
                            Text("JADE BLACK WITH WHITE EMBROIDERED LUXURIOUS LINEN DESIGNER SHIRT",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.normal,color: Colors.black,overflow:TextOverflow.ellipsis),
                                maxLines: 3),
                            SizedBox(height: 5.h),
                            Text("Rs.1500/-",
                                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black,overflow:TextOverflow.ellipsis),
                                maxLines: 1),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Row(
                  children: [
                    Text(" Categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.sp,color: Colors.black),),
                    Expanded(child: SizedBox(width: 5.w)),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Text(" See All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.black),),
                          SizedBox(width: 5.w),
                          Icon(Icons.arrow_circle_right_rounded,size: 22.sp, color: const Color(0xff1D24CA),)
                        ],
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170.w,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 150.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                border: Border.all(color: Colors.white,width: 3.sp),
                                color: Colors.grey[300],
                                image: DecorationImage(image: AssetImage("assets/images/productImages/newItems/img.png"),fit: BoxFit.fill),
                              ),
                            ),
                            Text("Cloths",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.black,overflow:TextOverflow.ellipsis),
                                maxLines: 3),
                          ],
                        ),
                      );
                    },
                ),


              ],
            ),
          ),
        )
      ),
    );
  }
}
