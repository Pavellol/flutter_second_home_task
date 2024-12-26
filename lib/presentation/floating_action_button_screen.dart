import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/presentation/add_task_screen.dart';
import 'package:flutter_second_home_task/presentation/information_screen.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // void _showModalBottomSheet(BuildContext context) {
    //   showModalBottomSheet(
    //     context: context,
    //     isDismissible: true,
    //     builder: (BuildContext context) {
    //       return SizedBox(
    //         height: MediaQuery.of(context).size.height * 0.9.h, // Задайте высоту по вашему усмотрению
    //         child: Center(
    //           child: Text('Ваш контент здесь'),
    //         ),
    //       );
    //     },
    //   );
    // }

    //   void _showBottomSheet(BuildContext context) {
    //   showModalBottomSheet(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return Expanded(
    //         child: SizedBox(
    //           height: 1000.h,
    //           width: 370.w,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Text(
    //                 'Bottom Sheet',
    //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //               ),
    //               SizedBox(height: 20),
    //               Text('This is a simple bottom sheet.'),
    //               SizedBox(height: 20),
    //               ElevatedButton(
    //                 onPressed: () {
    //                   Navigator.pop(context); // Закрыть Bottom Sheet
    //                 },
    //                 child: Text('Close'),
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //   );
    // }
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
            // onPressed: () => InformationScreenWidget(),
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
            // onPressed: () => _showModalBottomSheet(context),
            // onPressed: () => _showBottomSheet(context),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddTaskScreen()),
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
          //   child: ElevatedButton(
          //   onPressed: () => _showBottomSheet(context),
          //   child: Icon(
          //       Icons.add,
          //       color: Colors.white,
          //       size: 42.0.w,
          //     ),
          // ),
        ),
      ],
    );
  }
}
