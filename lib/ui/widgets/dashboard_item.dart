import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.numberOfTasks,
    required this.typeOfTask,
  });

  final int numberOfTasks;
  final String typeOfTask;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              numberOfTasks.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(child: Text(typeOfTask))
          ],
        ),
      ),
    );
  }
}