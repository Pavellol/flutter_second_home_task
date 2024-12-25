import 'dart:math';

import 'package:flutter/material.dart';

class CombinedIcon extends StatelessWidget {
  const CombinedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: FractionalOffset(0.2, 0.0),
            child: Transform.rotate(
              angle: pi / 0.65, 
              child: Icon(
                Icons.keyboard_backspace_rounded,                  
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.2, 0.6),
            child: 
              Icon(Icons.keyboard_arrow_down),
          ),
          // Icon(
          //   Icons.sort, 
          //   size: 10,
          // ),
        ],
      ),
    );
  }
}