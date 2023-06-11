import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jobsque/Screens/create%20account/type%20of%20work/type_of_work_screen.dart';
import 'package:jobsque/Screens/login%20screen/login_screen.dart';
import 'package:jobsque/services/services_API.dart';

import '../../../componant/custom_button.dart';
import '../../../const/style.dart';
import 'controller/create_account_controller.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);

  final control = Get.put(CreateAccountController());
  final ser = Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CreateAccountController>(
        init: CreateAccountController(),
        builder: (controller) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SingleChildScrollView(
              child: Form(
                key: control.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              //  Get.to(() => SlidingPage());
                            },
                            icon: const Icon(Icons.arrow_back,
                                color: K.blackColor)),
                        const Spacer(
                          flex: 1,
                        ),
                        Image.asset(
                          "lib/assets/images/Logo1.png",
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text("Create Account",
                        style: TextStyle(fontSize: 28.sp, color: K.blackColor)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Please create an account to find your dream job",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        )),
                    SizedBox(
                      height: 44.h,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        control.enable();
                      },
                      validator: (value) {
                        if (value == "") {
                          return "you should fill this ";
                        } else {
                          return null;
                        }
                      },
                      controller: control.nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_outline),
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          )),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        control.enable();
                      },
                      validator: (value) {
                        if (EmailValidator.validate(
                            control.emailController.text.trim())) {
                          return null;
                        } else {
                          return "Email Account is not accept ";
                        }
                      },
                      controller: control.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        control.enable();
                        control.activePassword(value);
                      },
                      validator: (value) {
                        control.activePassword(value);
                        return null;
                      },
                      onTap: () {
                        control.passwordTrue();
                      },
                      controller: control.passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !control.sufvar,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                control.reflection();
                              },
                              child: Icon(control.sufvar == false
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          )),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text("Password must be at least 8 characters",
                        style: TextStyle(
                          color: control.passWrong == 0
                              ? Colors.green
                              : control.passWrong == 1
                                  ? Colors.red
                                  : Colors.grey,
                          fontSize: 16.sp,
                        )),
                    SizedBox(
                      height: 105.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp)),
                        TextButton(
                            onPressed: () {
                              Get.to(() => LoginScreen());
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: K.primaryColor, fontSize: 14.sp),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Center(
                      child: CustomButton(
                        text: "Create account",
                        fun: ()async {
                          if(
                         control.formKey.currentState!.validate() )
                          {
                           await ser.register(
                              name: control.nameController.text,
                              email: control.emailController.text,
                              password: control.passwordController.text,
                            ) ;

                            Get.to(TypeOfWorkScreen());
                          }
                          print('dfffffffffffff');
                        },
                        buttonColor: control.clickEnable == true
                            ? K.primaryColor
                            : const Color.fromRGBO(209, 213, 219, 1),
                        textColor: control.clickEnable == true
                            ? K.whiteColor
                            : const Color.fromRGBO(107, 114, 128, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 10.h,
                            color: Colors.grey,
                            endIndent: 20,
                            thickness: 1,
                          ),
                        ),
                        Text(
                          "Or Sign up With Account",
                          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                        ),
                        Expanded(
                          child: Divider(
                            height: 10.h,
                            color: Colors.grey,
                            indent: 20,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 154.w,
                              height: 46.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          209, 213, 219, 1))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("lib/assets/images/google.png"),
                                  SizedBox(
                                    width: 14.45.w,
                                  ),
                                  Text(
                                    "Google",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 19.w,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              width: 154.w,
                              height: 46.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          209, 213, 219, 1))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("lib/assets/images/Facebook.png"),
                                  SizedBox(
                                    width: 14.45.w,
                                  ),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
