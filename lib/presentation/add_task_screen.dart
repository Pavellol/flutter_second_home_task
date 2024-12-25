import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add a task',
            style: TextStyle(fontSize: 35.0.sp),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 18.0.w, right: 20.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 233.w,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum dolor sit amet',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 233.w,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum dolor sit amet',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Date",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 233.w,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum dolor sit amet',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              SizedBox(
                width: 315.0.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Радиус скругления
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Done"),
                ),
              ),
            ],
          ),
        ));
  }
}
