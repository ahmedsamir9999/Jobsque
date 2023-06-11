import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApplyJobController extends GetxController {
  int numPage = 0;



  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  PageController pageController = PageController() ;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<bool> clicks = [
    false,
    false,
    false,
    false,
  ];

  final List names = [
    "Senior UX Designer",
    "Senior UI Designer",
    "Graphik Designer",
    "Front-End Developer",
  ];

  changePage(index)
  {
    numPage = index;
    update();
  }

  onClick(index) {

    clicks[index] = !clicks[index] ;
    update();
  }

}
