import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/helper/sharedprefeances.dart';
import 'package:jobsque/model/UpdateNameModel.dart';
import 'package:jobsque/model/UserModel.dart';
import 'package:http/http.dart' as http;


class EditeProfileController extends GetxController
{

  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? image ;


  pickImage() async {
    final imagePick =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    image = File(imagePick!.path);
    update();
  }

  updateName()async
  {
    final response =await http.put(
        Uri.parse('http://167.71.79.133/api/auth/user/update/${MyCache.GetString(key: MyChachKey.userId)}'),
        headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
      body: {'name':nameController.text}
    );

    UpdateNameModel name = UpdateNameModel.fromJson(jsonDecode(response.body));
    UserModel().user?.name = name.data?.name ;
    print('>>>>>>>>>>>>>>>>>>>>>${response.body}');
  }

  putUpdateProfile() async
  {
     await http.put(
      Uri.parse('http://167.71.79.133/api/user/profile/edit/${MyCache.GetString(key: MyChachKey.userId)}?bio=${bioController.text}&address=${addressController.text}&mobile=${phoneController.text}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );

  }
}
