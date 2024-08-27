import 'package:flutter/material.dart';
import 'plans_notifier.dart';

class PlansProvider extends InheritedNotifier<PlansNotifier> {
  const PlansProvider({
    super.key,
    required super.child,
    required PlansNotifier super.notifier,
  });

  static PlansNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlansProvider>()!
        .notifier!;
  }
}
