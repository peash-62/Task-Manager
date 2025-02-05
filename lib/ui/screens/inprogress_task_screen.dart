import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/task_list_item.dart';

class InprogressTaskScreen extends StatefulWidget {
  const InprogressTaskScreen({super.key});

  @override
  State<InprogressTaskScreen> createState() => _InprogressTaskScreenState();
}

class _InprogressTaskScreenState extends State<InprogressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return TaskListItem(
            type: 'progress',
            date: '24-02-2024',
            subject: 'Title will be here',
            description: 'description asedrfgj jkmj ghut nmk',
            onDeletePress: () {},
            onEditPress: () {},
            Color: Colors.blueGrey,
          );
        }),);
  }
}
