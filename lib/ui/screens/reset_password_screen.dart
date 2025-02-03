import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taskkmanager/ui/widgets/app_text_field_widget.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../utils/text_styles.dart';
import '../widgets/app_elevated_button.dart';
import 'login.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Set Password',
                  style: screenTitleTextStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                    'Enter a 8 digit password containing letter number and special character',
                    style: screenSubTitleTextStyle),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                  obscureText: true,
                  hintText: 'Password',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  obscureText: true,
                  hintText: 'Confirm Password',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(
                    child: const Text('Confirm'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                          (route) => false);
                    }),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                            (route) => false);
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
    );
  }
}
