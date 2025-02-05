import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/dashboard_item.dart';
import '../widgets/task_list_item.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'New',
                  numberOfTasks: 22,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'Completed',
                  numberOfTasks: 13,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'Cancelled',
                  numberOfTasks: 11,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'In Progress',
                  numberOfTasks: 16,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
              return TaskListItem(
                type: 'new',
                date: '24-02-2024',
                subject: 'Title will be here',
                description: 'description asedrfgj jkmj ghut nmk',
                onDeletePress: () {},
                onEditPress: () {},
              );
            }),
          ),
        ],
      ),
    );
  }
}




