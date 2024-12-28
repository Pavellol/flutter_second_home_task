import 'package:equatable/equatable.dart';

class TaskState extends Equatable {
  final List<Task> tasks;

  const TaskState({this.tasks = const []});

  TaskState copyWith({List<Task>? tasks}) {
    return TaskState(
      tasks: tasks ?? this.tasks,
    );
  }

  @override
  List<Object?> get props => [tasks];
}

class Task {
  final String date;
  final String time;
  final String name;

  Task({required this.name, required this.date, required this.time});
}
