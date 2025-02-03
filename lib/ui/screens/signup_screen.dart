import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/utils/text_styles.dart';
import 'package:taskkmanager/ui/widgets/app_elevated_button.dart';
import 'package:taskkmanager/ui/widgets/app_text_field_widget.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({super.key});

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  Text(
                    'Join With Us',
                    style: screenTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  AppTextFieldWidget(
                    hintText: 'Email',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextFieldWidget(
                    hintText: 'First Name',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextFieldWidget(
                    hintText: 'Last Name',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextFieldWidget(
                    hintText: 'Mobile',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextFieldWidget(
                    obscureText: true,
                    hintText: 'Password',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppElevatedButton(child: Text('Sign Up'), onTap: () {}),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account"),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
