import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/constants.dart';

class InformationScreenWidget extends StatelessWidget {
  const InformationScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Information',
          style: TextStyle(fontSize: 34.0.sp),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        children: [
          Text(
            textForInformationScreen,
            style: TextStyle(
              fontSize: 15.0.sp,
              color: Color.fromRGBO(115, 115, 115, 1),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 315.0.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Радиус скругления
                ),
              ),
              onPressed: () {Navigator.pop(context);},
              child: Text("Got it!"),
            ),
          ),
        ],
      ),
    );
  }
}
