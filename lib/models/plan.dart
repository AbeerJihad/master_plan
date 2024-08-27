import './task.dart';
import 'package:meta/meta.dart';

//read more about immutable pattern
//https://dart.academy/immutable-data-patterns-in-dart-and-flutter/

@immutable
class Plan {
  final String name;
  final List<Task> tasks;

  const Plan._internal(this.name, this.tasks);

  factory Plan({
    final String name = '',
    final List<Task> tasks = const [],
  }) =>
      Plan._internal(name, List.unmodifiable(tasks));

  int get completedCount => tasks.where((task) => task.complete).length;

  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';

  Plan _copyWith({String? name, List<Task>? tasks}) {
    return Plan(
      name: name ?? this.name,
      tasks: tasks ?? List<Task>.from(this.tasks),
    );
  }

  Plan updateName(String name) {
    return _copyWith(name: name);
  }

  Plan addTask({Task? task}) {
    return _copyWith(
      tasks: List<Task>.from(tasks)
        ..add(
          task ?? const Task(),
        ),
    );
  }

  Plan updateTask(
    int index, {
    String? description,
    bool? complete,
  }) {
    return _copyWith(
        tasks: List<Task>.from(tasks)
          ..[index] = tasks[index].copyWith(
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
  