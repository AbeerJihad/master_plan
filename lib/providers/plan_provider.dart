import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<TodoPlans>> {
  const PlanProvider({
    super.key,
    required super.child,
    required ValueNotifier<TodoPlans> super.notifier,
  });

  static ValueNotifier<TodoPlans> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
  }
}
