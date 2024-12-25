import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController timePicker = TextEditingController();
  final txtController = TextEditingController();
  final txtControllerForTime = TextEditingController();

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
        txtController.text = DateFormat.yMd().format(pickedDate);
      });
    });
  }

  // void _selTimePicker(){
  //   showTimePicker(context: context, initialTime: TimeOfDay.now()).then(pickedTime){
  //     if(pickedTime == null){
  //       return;
  //     }
  //     setState(() {
  //       txtControllerForTime.text = TimeOfDayFormat. 
  //     });
  //   }
  // }

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
                      // decoration: InputDecoration(
                      //   hintText: 'Lorem ipsum dolor sit amet',
                      // ),
                      onTap: _selDatePicker,
                      controller: txtController,
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
                      onTap: ()async {
                        var time = await showTimePicker(
                            context: context, initialTime: TimeOfDay.now());

                        if(time!=null){
                          setState(() {
                            timePicker.text = time.format(context);
                          });
                        }
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: 'Lorem ipsum dolor sit amet',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
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
                  onPressed: () {},
                  child: Text("Done"),
                ),
              ),
            ],
          ),
        ));
  }
}
