import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/presentation/add_task_screen.dart';
import 'package:flutter_second_home_task/presentation/information_screen.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {   
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35.0.w),
          child: FloatingActionButton(
            heroTag: "information_button",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InformationScreenWidget()),
              );
            },
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 42.0.w,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(),
          child: FloatingActionButton(
            heroTag: "add_button",
            elevation: 25,            
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AddTaskScreen()),
              );
            },
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 42.0.w,
            ),
          ),          
        ),
      ],
    );
  }
}
