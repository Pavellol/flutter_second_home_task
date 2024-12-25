import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[          
          BottomNavigationBarItem(              
            icon: SvgPicture.asset(
              'assets/nav_bar_icon_first.svg', 
              width: 40.w,
              height: 40.h,
              ),
            label: "",
          ),
          BottomNavigationBarItem(              
            icon: SvgPicture.asset(
              'assets/nav_bar_icon_second.svg', 
              width: 40.w,
              height: 40.h,
              ),   
            label: "",         
          ),
          BottomNavigationBarItem(              
            icon: SvgPicture.asset(
              'assets/nav_bar_icon_three.svg', 
              width: 40.w,
              height: 40.h,
              ),
            label: "",         
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(52, 120, 246, 1),
        //fixedColor: Colors.red,

        onTap: _onItemTapped,
      );
  }
}