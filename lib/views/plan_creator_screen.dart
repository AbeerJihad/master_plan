import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../providers/providers_layer.dart';
import '../views/plan_screen.dart';

class PlanCreatorScreen extends StatefulWidget {
  const PlanCreatorScreen({super.key});

  @override
  State<PlanCreatorScreen> createState() => _PlanCreatorScreenState();
}

class _PlanCreatorScreenState extends State<PlanCreatorScreen> {
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Master Plans')),
      body: Column(
        children: [
          _buildPlanCreator(),
          Expanded(
            child: _buildMasterPlans(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCreator() {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          color: Theme.of(context).cardColor,
          elevation: 10,
          child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'Add a plan',
                contentPadding: EdgeInsets.all(20),
              ),
              onEditingComplete: addPlan),
        ));
  }

  void addPlan() {
    final text = textController.text;
    if (text.isEmpty) {
      return;
    }
    final plan = Plan(name: text, tasks: const []);
    PlansNotifier planNotifier = PlansProvider.of(context);
    planNotifier.addPlan(plan);
    textController.clear();
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {});
  }

  Widget _buildMasterPlans() {
    PlansNotifier planNotifier = PlansProvider.of(context);
    List<Plan> plans = planNotifier.value;
    if (plans.isEmpty) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.note, size: 100, color: Colors.grey),
            Text('You do not have any plans yet.',
                style: Theme.of(context).textTheme.headlineSmall)
          ]);
    }
    return ListView.builder(
        itemCount: plans.length,
        itemBuilder: (context, index) {
          final plan = plans[index];
          return ListTile(
              title: Text(plan.name),
              subtitle: Text(plan.completenessMessage),
              trailing: plan.isCompleted
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : const SizedBox(
                      width: 10,
                    ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => PlanScreen(
                          plan: plan,
                        )));
              });
        });
  }
}
