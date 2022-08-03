part of 'tasks_bloc.dart';

class TasksState extends Equatable{
  final List<Task> allTasks;
  final List<Task> removedtasks;
  const TasksState({
    this.allTasks = const <Task>[],
    this.removedtasks = const<Task>[],
  });

  @override
  List<Object> get props => [allTasks, removedtasks];

  Map<String,dynamic> toMap(){
    return{
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
      'removedtasks': removedtasks.map((x) => x.toMap()).toList(),

    };
  }

  factory TasksState.fromMap(Map<String,dynamic> map){
    return TasksState(
      allTasks: List<Task>.from(map['allTasks']?.map((x) => Task.fromMap(x))),
      removedtasks: List<Task>.from(map['removedtasks']?.map((x) => Task.fromMap(x)))

    );
  }

}