import './plan.dart';
import './task.dart';
import 'package:meta/meta.dart';

@immutable
class TodoPlans {
  final List<Plan> _plans;

  const TodoPlans._internal(this._plans);

  factory TodoPlans({final List<Plan>? plans}) =>
      TodoPlans._internal(plans ?? const []);

  List<Plan> get plans => List<Plan>.from(_plans);

  TodoPlans _copyWith({List<Plan>? plans}) {
    return TodoPlans(
      plans: plans ?? List<Plan>.from(_plans),
    );
  }

  TodoPlans addPlan(Plan plan) {
    return _copyWith(
      plans: List<Plan>.from(_plans)
        ..add(
          plan,
        ),
    );
  }

  TodoPlans addTaskTo(Plan plan, {Task? task}) {
    int index = _plans.indexWhere((p) => p.name == plan.name);
    Plan newPlan = plan.addTask(task: task);
    return _copyWith(plans: List<Plan>.from(_plans)..[index] = newPlan);
  }

  TodoPlans updateTaskinPlan(
    Plan plan,
    int taskIndex, {
    String? description,
    bool? complete,
  }) {
    int index = _plans.indexWhere((p) => p.name == plan.name);
    Plan newPlan = plan.updateTask(taskIndex,
        description: description, complete: complete);
    return _copyWith(plans: List<Plan>.from(_plans)..[index] = newPlan);
  }
}
