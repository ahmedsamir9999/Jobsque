import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobDetailsController extends GetxController
{

  int groupValue=0;

  CarouselController controller = CarouselController();


  groupChange(value){
    groupValue = value  ;
    controller.jumpToPage(groupValue);
    update();
  }


}