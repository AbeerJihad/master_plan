import 'package:flutter/material.dart';
import '../models/data_layer.dart';

//value notifier

class PlansNotifier extends ValueNotifier<List<Plan>> {
  PlansNotifier() : super(<Plan>[]);

  void addPlan(Plan plan) {
    value.add(plan);
    notifyListeners();
  }

  Plan getPlan(String name) {
    return value.firstWhere((p) => p.name == name);
  }

  void addTaskTo(Plan plan, {Task? task}) {
    int index = value.indexWhere((p) => p.name == plan.name);
    Plan newPlan = plan.addTask(task: task);
    value.replaceRange(index, index + 1, <Plan>[newPlan]);
    notifyListeners();
  }

  void updateTaskinPlan(
    Plan plan,
    int taskIndex, {
    String? description,
    bool? complete,
  }) {
    int index = value.indexWhere((p) => p.name == plan.name);

    Plan newPlan = plan.updateTask(taskIndex,
        description: description, complete: complete);
    value.replaceRange(index, index + 1, <Plan>[newPlan]);
    notifyListeners();
  }
}
