import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_event.dart';
import 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTask>((event, emit) {
      final updatedTasks = List<Task>.from(state.tasks)..add(event.task);
      emit(state.copyWith(tasks: updatedTasks));
    });
  }
}