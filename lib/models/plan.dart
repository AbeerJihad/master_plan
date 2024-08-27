import './task.dart';
import 'package:meta/meta.dart';

//read more about immutable pattern
//https://dart.academy/immutable-data-patterns-in-dart-and-flutter/

@immutable
class Plan {
  final String name;
  final List<Task> _tasks;

  const Plan._internal(this.name, this._tasks);

  factory Plan({
    required String name,
    final List<Task>? tasks,
  }) =>
      Plan._internal(name, List<Task>.from(tasks ?? const []));

  List<Task> get tasks => List.unmodifiable(_tasks);

  int get completedCount => _tasks.where((task) => task.complete).length;

  String get completenessMessage =>
      '$completedCount out of ${_tasks.length} tasks';

  Plan _copyWith({String? name, List<Task>? tasks}) {
    return Plan(
      name: name ?? this.name,
      tasks: tasks ?? List<Task>.from(_tasks),
    );
  }

  Plan updateName(String name) {
    return _copyWith(name: name);
  }

  Plan addTask({Task? task}) {
    return _copyWith(
      tasks: List<Task>.from(_tasks)
        ..add(
          task ?? const Task(),
        ),
    );
  }

  bool get isCompleted => _tasks.isNotEmpty && completedCount == _tasks.length;

  Plan updateTask(
    int index, {
    String? description,
    bool? complete,
  }) {
    return _copyWith(
        tasks: List<Task>.from(_tasks)
          ..[index] = _tasks[index].copyWith(
            description: description,
            complete: complete,
          ));
    /*  return _copyWith(
        tasks: List<Task>.from(tasks)
          ..replaceRange(index, index + 1, [
            tasks[index].copyWith(description: description, complete: complete)
          ])); */
  }
}
