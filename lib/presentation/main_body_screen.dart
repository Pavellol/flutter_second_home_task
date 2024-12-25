import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/constants.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreenBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.only(
          left: 20.w, 
          right: 20.w
        ), 
        children: [
          SizedBox(
            height: 15.h,
          ),
          Text(
            textForMainScreen,            
            style: TextStyle(
              fontSize: 15.0.sp,
              color: Color.fromRGBO(115, 115, 115, 1),
              ),
          ),
        ]        
      );
  }
}