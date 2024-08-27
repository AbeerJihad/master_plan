import 'package:flutter/material.dart';
import './providers/plan_provider.dart';
import './utils/theme.dart';
import '../models/data_layer.dart';

import 'views/plan_creator_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme =
        createTextTheme(context, "Cantora One", "Cabin Condensed");
    MaterialTheme theme = MaterialTheme(textTheme);

    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        theme: theme.light(),
        darkTheme: theme.dark(),
        themeMode: ThemeMode.system,
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
