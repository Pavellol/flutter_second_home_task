import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  // TextEditingController timePicker = TextEditingController();
  final datePickerController = TextEditingController();
  final timePickerController = TextEditingController();

  void _selDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2024),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        datePickerController.text = DateFormat.yMd().format(pickedDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(left: 15.0.w),
            child: Text(
              'Task',
              style: TextStyle(fontSize: 22.0.sp),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 29.0.w, right: 20.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Add a task",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 34.sp),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              Row(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  SizedBox(
                    width: 241.w,
                    height: 27.h,
                    child: TextField(                      
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum dolor sit amet',
                        hintStyle: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Time",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  SizedBox(
                    width: 86.w,
                    height: 36.h,
                    child: SizedBox(
                      width: 70.w,
                      height: 29.h,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 8.0.w,
                            right: 8.0.w,
                            top: 4.0.h,
                            bottom: 4.0.h,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(118, 118, 118, 0.12),
                          hintText: '9:41',
                          hintStyle: TextStyle(
                            fontSize: 22.0.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.sp)),
                          ),
                        ),
                        controller: timePickerController,
                        onTap: () async {
                          var time = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          if (time != null) {
                            setState(() {
                              timePickerController.text = time.format(context);
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Date",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  SizedBox(
                    width: 163.w,
                    height: 36.h,
                    child: SizedBox(
                      width: 147.w,
                      height: 28.h,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 8.0.w,
                            right: 8.0.w,
                            top: 4.0.h,
                            bottom: 4.0.h,
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(118, 118, 118, 0.12),
                          hintText: '09.04.2023',
                          hintStyle: TextStyle(
                            fontSize: 22.0.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.sp)),
                          ),
                        ),
                        onTap: _selDatePicker,
                        controller: datePickerController,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 57.h,
              ),
              SizedBox(
                width: 315.0.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {Navigator.pop(context);},
                  child: Text("Done"),
                ),
              ),
            ],
          ),
        ));
  }
}
