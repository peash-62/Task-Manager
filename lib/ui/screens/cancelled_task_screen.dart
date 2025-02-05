import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/task_list_item.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return TaskListItem(
            type: 'cancelled',
            date: '24-02-2024',
            subject: 'Title will be here',
            description: 'description asedrfgj jkmj ghut nmk',
            onDeletePress: () {},
            onEditPress: () {},
            Color: Colors.redAccent,
          );
        }),);
  }
}
