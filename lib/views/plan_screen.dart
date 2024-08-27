import '../providers/providers_layer.dart';

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
    PlansNotifier plansNotifier = PlansProvider.of(context);
    Plan currentPlan = plansNotifier.getPlan(plan.name);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          currentPlan.name,
        ),
      ),
      //ListenableBuilder -> listen/rebuild when change
      body: Column(
        children: [
          Expanded(child: _buildList(currentPlan)),
          Visibility(
            visible: currentPlan.completedCount > 0,
            child: SafeArea(
              child: Text(currentPlan.completenessMessage),
            ),
          )
        ],
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    // ValueNotifier<plan> to read/update plan of parent
    PlansNotifier plansNotifier = PlansProvider.of(context);
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        Plan currentPlan = plansNotifier.getPlan(plan.name);
        plansNotifier.addTaskTo(currentPlan);
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
    PlansNotifier plansNotifier = PlansProvider.of(context);
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            Plan currentPlan = plansNotifier.getPlan(plan.name);
            plansNotifier.updateTaskinPlan(
              currentPlan,
              index,
              complete: selected,
            );
          }),
      title: TextFormField(
        initialValue: task.description,
        style: task.complete
            ? const TextStyle().copyWith(decoration: TextDecoration.lineThrough)
            : const TextStyle().copyWith(),
        onChanged: (text) {
          Plan currentPlan = plansNotifier.getPlan(plan.name);
          plansNotifier.updateTaskinPlan(
            currentPlan,
            index,
            description: text,
          );
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
