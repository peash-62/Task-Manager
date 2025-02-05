import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/task_list_item.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return TaskListItem(
            type: 'completed',
            date: '24-02-2024',
            subject: 'Title will be here',
            description: 'description asedrfgj jkmj ghut nmk',
            onDeletePress: () {},
            onEditPress: () {},
            Color: Colors.green,
          );
        }),);
  }
}
