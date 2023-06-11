

import 'package:get/get.dart';

class TypeOfCityController extends GetxController
{
  int groupValue = 0;


  List<bool> onTap =
  [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];


  changeValue(value)
  {
    groupValue = value ;
    update();
  }


  changeOnTap(index)
  {
    onTap[index] = !onTap[index];

    update();

  }


}