import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/utils/text_styles.dart';
import 'package:taskkmanager/ui/widgets/app_elevated_button.dart';
import 'package:taskkmanager/ui/widgets/app_text_field_widget.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';
import 'package:taskkmanager/ui/widgets/user_profile_widget.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          UserProfileWidget(),
          Expanded(
              child: ScreenBackground(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Add New Task',
                      style: screenTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Subject',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Description',
                      controller: TextEditingController(),
                      maxLines: 5,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppElevatedButton(child: Text('Submit'), onTap: (){})
                  ],
                ),
              ),
            ),
          ))
        ],
      )),
    );
  }
}
