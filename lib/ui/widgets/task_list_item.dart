import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.subject,
    required this.description,
    required this.date,
    required this.onEditPress,
    required this.onDeletePress,
    required this.type, this.Color,
  });

  final String subject, description, date, type;
  final VoidCallback onEditPress, onDeletePress;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(description),
            const SizedBox(
              height: 8,
            ),
            Text('Date : $date'),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Chip(
                  label: Text(type),
                  backgroundColor:Color,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onEditPress,
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: onDeletePress,
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}