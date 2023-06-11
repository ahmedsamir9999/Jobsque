
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../helper/sharedprefeances.dart';

class LoginController extends GetxController
{
  bool sufvar = false;
  bool clickEnable = false;
  bool checkBox = false;
  TextEditingController nameController =
  TextEditingController(text: MyCache.GetString(key: MyChachKey.name));
  TextEditingController emailController =
  TextEditingController(text: MyCache.GetString(key: MyChachKey.email));
  TextEditingController passwordController =
  TextEditingController(text: MyCache.GetString(key: MyChachKey.password));

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  changeCheck(value)
  {
    checkBox = value! ;
    update();
  }

}