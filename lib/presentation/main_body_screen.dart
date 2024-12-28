import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_home_task/Task/task_bloc.dart';
import 'package:flutter_second_home_task/Task/task_state.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreenBody> {

  List<bool> _checkedStates = [];
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        if (state.tasks.isEmpty) {
          return Text(
            "Looks like there is no tasks yet! Go ahead and push a plus button below",
            style: TextStyle(fontSize: 15.0.sp),
          );
        } else {
          // ignore: unnecessary_null_comparison
          if (_checkedStates == null || _checkedStates.length != state.tasks.length) {
            _checkedStates = List<bool>.filled(state.tasks.length, false);
          }
          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              final task = state.tasks[index];
              final isChecked = _checkedStates[index]; // Текущее состояние
              return ListTile(
                title: CheckboxListTile(
                  title: Text(
                    task.name,
                    style: TextStyle(
                      decoration: isChecked ? TextDecoration.lineThrough : null,                                         
                      color: isChecked ? Color.fromRGBO(115, 115, 115, 1) :Colors.black,
                      fontSize: 15.sp,
                    ),
                  ),
                  subtitle: Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    task.date.replaceAll("/", ".") + " " + task.time.substring(0,task.time.length - 3),                   
                    style: TextStyle(
                      decoration: isChecked ? TextDecoration.lineThrough : null,                      
                      color: isChecked ? Color.fromRGBO(163, 163, 163, 1) : Colors.black,
                      fontSize: 13.sp,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _checkedStates[index] = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                ),
              );
            },
          );
        }
      },
    );
  }
}
