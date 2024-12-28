import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/presentation/bottom_navigation_bar.dart';
import 'package:flutter_second_home_task/presentation/floating_action_button_screen.dart';
import 'package:flutter_second_home_task/presentation/main_body_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My tasks',
          style: TextStyle(fontSize: 35.0.sp),
        ),
      ),
      body: MainScreenBody(),
      bottomNavigationBar: BottomNavigationBarScreen(
       
      ),
      floatingActionButton: FloatingActionButtonScreen(),
    );
  }
}