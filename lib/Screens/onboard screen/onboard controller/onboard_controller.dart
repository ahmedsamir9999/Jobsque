

import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OnboardController extends GetxController
{
  final pageController = PageController();
  int numPage = 0;

  changNumPage(index)
  {
    numPage = index ;
    update();
  }

}