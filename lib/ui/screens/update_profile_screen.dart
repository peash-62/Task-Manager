import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/utils/text_styles.dart';
import 'package:taskkmanager/ui/widgets/app_elevated_button.dart';
import 'package:taskkmanager/ui/widgets/app_text_field_widget.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';
import 'package:taskkmanager/ui/widgets/user_profile_widget.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
                      'Update Profile',
                      style: screenTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Container(
                            padding:const EdgeInsets.all(16.0),
                            decoration:const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0)
                              )
                            ),
                            child:const Text('Photo'),
                          ),
                          Expanded(
                            child: Container(
                              padding:const EdgeInsets.all(16.0),
                              decoration:const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0)
                                  )
                              ),
                              child:const Text(''),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Email',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      hintText: 'First Name',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Last Name',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Mobile',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppTextFieldWidget(
                      obscureText: true,
                      hintText: 'Password',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppElevatedButton(child: Text('Submit'), onTap: () {})
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
