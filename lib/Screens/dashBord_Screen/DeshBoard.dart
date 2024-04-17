import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trends/Controllers/dashboard_Controller.dart';
import 'package:trends/Screens/dashBord_Screen/cart_Screen/cartScreen.dart';
import 'package:trends/Screens/dashBord_Screen/category_Screen/categoryScreen.dart';
import 'package:trends/Screens/dashBord_Screen/home_Screen/homeScreen.dart';
import 'package:trends/Screens/dashBord_Screen/profile_Screen/profileScreen.dart';
import 'package:trends/Screens/dashBord_Screen/wishlist_Screen/wishlistScreen.dart';

class DeshBoard extends StatefulWidget {
  const DeshBoard({Key? key}) : super(key: key);

  @override
  State<DeshBoard> createState() => _DeshBoardState();
}

class _DeshBoardState extends State<DeshBoard> {

  //calling dashboard_Controller
  var dashboardController = Get.put(dashboardConntroller());

  var navbarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined,size: 20.sp, color: Colors.grey,),
      label: "Home",
      activeIcon: Icon(Icons.home_rounded,size: 20.sp, color: Color(0xff1D24CA),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline,size: 20.sp, color: Colors.grey,),
      label: "Wishlist",
      activeIcon: Icon(Icons.favorite,size: 20.sp, color: Color(0xff1D24CA),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined,size: 20.sp, color: Colors.grey,),
      label: "Category",
      activeIcon: Icon(Icons.category_rounded,size: 20.sp, color: Color(0xff1D24CA),),
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined,size: 20.sp, color: Colors.grey,),
        label: "Cart",
        activeIcon: Icon(Icons.shopping_cart,size: 20.sp, color: Color(0xff1D24CA),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_rounded,size: 20.sp, color: Colors.grey,),
      label: "Person",
      activeIcon: Icon(Icons.person,size: 20.sp, color: Color(0xff1D24CA),),
    ),
  ];

  var navBody=[
    HomeScreen(),
    WishlistScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> Expanded(child: navBody.elementAt(dashboardController.currentNavIndex.value))),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
            currentIndex: dashboardController.currentNavIndex.value,
            onTap: (value){
              dashboardController.currentNavIndex.value = value;
            },
            items: navbarItems,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff1D24CA) ,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
