import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../componant/custom_icons.dart';

class TypeOfWorkController extends GetxController
{
 // bool onTap = false;
  int index = 0 ;
  bool onTap = false ;
  final controller = PageController();


    List texts = [
    "UI/UX Designer",
    "Ilustrator Designer",
    "Developer",
    "Management",
    "Information Technology",
    "Research and Analytics",
  ];

    List<IconData> icons = [
    CustomIcons.bezier,
    CustomIcons.pen_tool_2,
    CustomIcons.code,
    CustomIcons.graph,
    CustomIcons.monitor_mobbile,
    CustomIcons.cloud_add,
  ];

    List<bool> onTaap =
    [
      false ,
      false ,
      false ,
      false ,
      false ,
      false ,
    ];



   changeOnTap(index)
{
    onTaap[index] = !onTaap[index] ;

    update();
}



}