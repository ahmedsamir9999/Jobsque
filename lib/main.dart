



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jobsque/Screens/login%20screen/login_screen.dart';
import 'package:jobsque/Screens/navigator%20bar%20screen/navigator_bar_screen.dart';
import 'package:jobsque/Screens/profile%20screen/profile_screen.dart';
import 'package:jobsque/Screens/saved%20screen/saved_screen.dart';
import 'package:jobsque/const/style.dart';
import 'package:jobsque/test.dart';

import 'Screens/apply Job/apply_job_screen.dart';
import 'Screens/create account/create account/create_account_screen.dart';
import 'Screens/home screen/home_sereen.dart';
import 'Screens/job details/job_details.dart';
import 'Screens/splash_screen/splash_screen.dart';
import 'helper/sharedprefeances.dart';

Future<void> main()  async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Jobsque());
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
}

class Jobsque extends StatelessWidget {
  const Jobsque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(425 , 925),
        builder: (BuildContext , Widget)=>GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: K.whiteColor,
          ),
          // home: SplashScreen(),
          // home: TypeOfWorkScreen(),
          // home: HomeScreen(),
          //  home: CreateAccountScreen(),
            home: LoginScreen(),
          // home: ApplyJobScreen(),
         // home : ProfileScreen(),
          // home: JobDetailsScreen(),
          // home: Test(),
          //   home: NavigatorScreen(),
          //  home: SaveScreen(),

        ));
  }
}