import 'package:meta/meta.dart';

@immutable
class Task {
  final String description;
  final bool complete;
  const Task({
    this.complete = false,
    this.description = '',
  });
  Task copyWith({String? description, bool? complete}) {
    return Task(
        description: description ?? this.description,
        complete: complete ?? this.complete);
  }
}
