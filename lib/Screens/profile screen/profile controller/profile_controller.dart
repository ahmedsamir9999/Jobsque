import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jobsque/model/GetProfileModel.dart';
import 'package:jobsque/services/services_API.dart';

class ProfileController extends GetxController
{
  final TextEditingController nameController = TextEditingController();
   GetProfileModel? profile ;

  @override
  void onReady() async{
    // TODO: implement onReady
     profile =await Services().getProfile();
    super.onReady();
    update();
  }


}