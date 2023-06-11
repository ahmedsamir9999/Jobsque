import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsque/Screens/applied%20screen/applied_screen.dart';
import 'package:jobsque/Screens/home%20screen/home_sereen.dart';
import 'package:jobsque/Screens/messages%20screen/messages_screen.dart';
import 'package:jobsque/Screens/profile%20screen/profile_screen.dart';
import 'package:jobsque/Screens/saved%20screen/saved_screen.dart';

class NavigatorController extends GetxController {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final currentIndex = 0.obs;
  List<Widget> screens = [
    HomeScreen(),
    MessagesScreen(),
    AppliedScreen(),
    SaveScreen(),
    ProfileScreen(),
  ];


  changTapIndex(index) {
    currentIndex.value = index;
  }
}
