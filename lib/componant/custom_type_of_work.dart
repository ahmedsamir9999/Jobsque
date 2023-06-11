import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTypeOfWork extends StatelessWidget {
  final int index;
  final Function() fun;
  final List clicks ;
  final List names ;

  const CustomTypeOfWork({
    super.key,
    required this.index,
    required this.fun,
    required this.clicks,
    required this.names,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 95.h,
      decoration: BoxDecoration(
        color: clicks[index] == true ? const Color(0xffD6E4FF) : Colors.white,
        border: Border.all(
            color:
                clicks[index] == true ? const Color(0xff3366FF) : Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(names[index],
                  style: TextStyle(
                      fontSize: 16.sp, fontWeight: FontWeight.w500)),
              const Spacer(),
              Text("CV.pdf . Portfolio.pdf", style: TextStyle(fontSize: 14.sp)),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: fun,
              //         (){
              //   setState(() {
              //     for(int i=0 ;i<4;i++)
              //     {
              //       print("number is ${widget.index}");
              //       print(i);
              //       if(widget.index==i){clicks[i]=true;}
              //       else{clicks[i]=false;}
              //     }print("-------------");
              //   });
              // },
              icon: clicks[index] == true
                  ? const Icon(
                      Icons.circle,
                      color: Colors.blue,
                    )
                  : const Icon(
                      Icons.circle_outlined,
                      color: Colors.grey,
                    ))
        ],
      ),
    );
  }
}
