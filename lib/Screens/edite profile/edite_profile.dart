import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/Screens/profile%20screen/profile_screen.dart';

import '../../componant/custom_button.dart';
import '../../componant/custom_icons.dart';
import 'edite profile controller/edite_profile_controller.dart';

class EditeProfile extends StatelessWidget {
  EditeProfile({Key? key}) : super(key: key);
  final control = Get.put(EditeProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon:
                              Icon(Icons.arrow_back_outlined, size: 24.sp),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            const Spacer(
                              flex: 3,
                            ),
                            Text("Edite Profile"),
                            const Spacer(
                              flex: 4,
                            ),
                          ],
                        ),
                        Center(
                          child:GetBuilder<EditeProfileController>(
                            init:EditeProfileController() ,
                            builder: (controller) => ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: CircleAvatar(
                              radius: 45.r,
                              backgroundColor: Colors.black,
                              child: control.image == null
                                  ?const Icon(CustomIcons.camera)
                                  :Image.file(controller.image!,fit: BoxFit.cover,width: double.infinity,),
                          ),
                            ),),
                        ),
                        Center(child:
                        TextButton(onPressed: ()
                        {
                          control.pickImage();
                        },
                            child: Text("Change  Photo"))),
                        SizedBox(height: 25.h,),
                        Text("Name"),
                        SizedBox(height: 8.h,),
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 5) {
                              return "it should more than 5 letters or numbers ";
                            } else {
                              return null;
                            }
                          },
                          controller: control.nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "name",
                              prefixIcon: const Icon(Icons.person_2_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              )),
                        ),
                        SizedBox(height: 28.h,),
                        Text("Bio"),
                        SizedBox(height: 8.h,),
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 5) {
                              return "it should more than 5 letters or numbers ";
                            } else {
                              return null;
                            }
                          },
                          controller: control.addressController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "email",
                              prefixIcon: const Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              )),
                        ),
                        SizedBox(height: 28.h,),
                        Text("Address"),
                        SizedBox(height: 8.h,),
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 5) {
                              return "it should more than 5 letters or numbers ";
                            } else {
                              return null;
                            }
                          },
                          controller: control.addressController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "email",
                              prefixIcon: const Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              )),
                        ),
                        SizedBox(height: 28.h,),
                        Text("No.Handphone*"),
                        SizedBox(height: 8.h,),
                        TextFormField(

                          validator: (value) {
                            if (value!.length < 5) {
                              return "it should more than 5 letters or numbers ";
                            } else {
                              return null;
                            }
                          },
                          controller: control.phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              prefixIcon: const Icon(Icons.outlined_flag),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              )),
                        ),
                        SizedBox(height: 83.h,),
                        CustomButton(
                            text: "Save",
                            fun: ()async{
                              await control.updateName();
                              await control.putUpdateProfile();
                              Get.off(ProfileScreen());
                              },
                            buttonColor: const Color(0xff3366FF),
                            textColor: Colors.white)
                      ]),
                )
            )
        )
    );
  }
}