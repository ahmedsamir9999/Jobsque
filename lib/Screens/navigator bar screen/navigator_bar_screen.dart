import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobsque/Screens/navigator%20bar%20screen/navigator%20bar%20controller/navigator_bar_controller.dart';
import '../../const/style.dart';

class NavigatorScreen extends StatelessWidget {
  NavigatorScreen({Key? key}) : super(key: key);

  final controller = Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return GetX<NavigatorController>(
        init: NavigatorController(),
        builder: (controller)=> Scaffold(
          body: controller.screens[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 30.sp,
            selectedItemColor: K.primaryColor,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex:controller.currentIndex.value ,
            onTap: (i)
            {
              controller.changTapIndex(i);

            },
            items:  const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: 'Messages'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: 'Applied'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.save),
                  label: 'Saved'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile'
              ),
            ],
          ),

        )
    );
  }
}