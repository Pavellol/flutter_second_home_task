import 'package:equatable/equatable.dart';
import 'package:flutter_second_home_task/Task/task_state.dart';

abstract class TaskEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddTask extends TaskEvent {
  final Task task;

  AddTask(this.task);

  @override
  List<Object?> get props => [task];
}