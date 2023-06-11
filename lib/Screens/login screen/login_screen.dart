import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobsque/Screens/create%20account/create%20account/create_account_screen.dart';
import 'package:jobsque/Screens/login%20screen/controller/login_controller.dart';
import 'package:jobsque/Screens/navigator%20bar%20screen/navigator_bar_screen.dart';
import 'package:jobsque/services/services_API.dart';
import 'package:jobsque/test.dart';

import '../../componant/custom_button.dart';
import '../../const/style.dart';
import '../home screen/home_sereen.dart';
import '../saved screen/saved controller/saved_controller.dart';
import '../saved screen/saved_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final control = Get.put(LoginController());
//  final control2 = Get.put(SavedController());
  final ser = Services();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
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
                    Text("Login",
                        style: TextStyle(fontSize: 28.sp, color: K.blackColor)),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text("Please login to find your dream job",
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
                          return "enter your email ";
                        } else {
                          return null;
                        }
                      },
                      controller: control.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Email",
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
                        if (value!.length < 5) {
                          return "it should more than 5 letters or numbers ";
                        } else {
                          return null;
                        }
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
                    Row(
                      children: [
                        Checkbox(
                          shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          value: control.checkBox,
                          onChanged: (value) {
                            control.changeCheck(value);
                          },
                          activeColor: K.primaryColor,
                        ),
                        const Text("Remember me"),
                        const Spacer(
                          flex: 1,
                        ),
                        TextButton(
                            onPressed: () {
                              // Get.to(() => ForgotPassword());
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(color: K.primaryColor),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 160.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont’t have an account?",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp)),
                        TextButton(
                            onPressed: () {
                              Get.to(() => CreateAccountScreen());
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: K.primaryColor, fontSize: 14.sp),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: CustomButton(
                        text: "Login",
                        fun: () async {
                          await ser.signIn(
                            email: control.emailController.text,
                            password: control.passwordController.text,
                          );
                          print('doneeeeeeeee');
                         // control2.getSavedJob();
                          // Get.to(NavigatorScreen());
                           Get.to(HomeScreen());

                         await Get.to(NavigatorScreen());
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
                          "Or Login With Account",
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
                    )
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
