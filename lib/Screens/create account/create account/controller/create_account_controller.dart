import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CreateAccountController extends GetxController
{

  bool sufvar = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool clickEnable = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
 // Api api = Api();
  int passWrong = 2;
  bool passActive = false;

  enable() {
    if (formKey.currentState!.validate()) {
      clickEnable = true;
    } else {
      clickEnable = false;
    }

    update();
  }

  reflection()
  {
    sufvar = !sufvar;
    update();
  }

  // changeCheck(value)
  // {
  //   checkBox = value! ;
  //   update();
  // }

  passwordTrue()
  {
    passActive = true;
    update();
  }

activePassword(value)
{
  if (passActive == true) {
    if (value.length < 8) {
      passWrong = 1;
      return;
    }
    else {
      passWrong = 0;
      return;
    }
  }
  else {
    passWrong = 2;
  }

  update();
}


}