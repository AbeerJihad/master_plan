import '../providers/plan_provider.dart';

import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});
  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Plan plan = Plan();
  Plan get plan => widget.plan;

  //use a ScrollController to remove the focus from any TextField during a scroll event
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        //FocusScope.of(context).requestFocus(FocusNode());
        FocusManager.instance.primaryFocus?.unfocus();
      });
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Master Plan',
        ),
      ),
      //ListenableBuilder -> listen/rebuild when change
      body: ValueListenableBuilder<List<Plan>>(
          valueListenable: plansNotifier,
          builder: (context, plans, child) {
            Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
            return Column(
              children: [
                Expanded(child: _buildList(currentPlan)),
                Visibility(
                  visible: currentPlan.completedCount > 0,
                  child: SafeArea(
                    child: Text(currentPlan.completenessMessage),
                  ),
                )
              ],
            );
          }),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    // ValueNotifier<plan> to read/update plan of parent
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        Plan currentPlan = plan;
        int planIndex =
            plansNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        Plan updatedPlan = plansNotifier.value[planIndex].addTask();

        plansNotifier.value = List<Plan>.from(plansNotifier.value)
          ..[planIndex] = updatedPlan;
      },
      child: const Icon(Icons.add),
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            Plan currentPlan = plan;
            int planIndex = planNotifier.value
                .indexWhere((p) => p.name == currentPlan.name);

            Plan updatedPlan = planNotifier.value[planIndex].updateTask(
              index,
              complete: selected,
            );

            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..[planIndex] = updatedPlan;
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = plan;
          int planIndex =
              planNotifier.value.indexWhere((p) => p.name == currentPlan.name);

          Plan updatedPlan = planNotifier.value[planIndex].updateTask(
            index,
            description: text,
          );

          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = updatedPlan;
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
