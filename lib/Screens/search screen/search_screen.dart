import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/custom_icons.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final TextEditingController _controller =TextEditingController();
 // ApiShowJobs serv=ApiShowJobs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left:24.w ,right: 24.w,top: 40.h),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) =>HomeNavigationBar() ,));
                    },
                        icon: const Icon(Icons.arrow_back,color: Colors.black,)),
                    SizedBox(width: 335.w,
                      child: TextFormField(
                        controller:_controller ,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(CustomIcons.search_normal),
                          hintText: "Search....",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100.r)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36.h,
                color: const Color(0xffE5E7EB),
                child:Padding(
                  padding:  EdgeInsets.only(right:24.w ,left: 24.w,),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
              ),
              // FutureBuilder(
              //   future: serv.get(),
              //     builder:(context, snapshot) {
              //     If(snapshot.hasData){}
              //       return ListView.builder(
              //         itemCount: ,
              //
              //           itemBuilder: (context, index) {
              //
              //           },);
              //     }, ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: Color(0xffE5E7EB),
                child:Padding(
                  padding: EdgeInsets.only(right:24.w ,left: 24.w,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}