import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/screens/bottom_nav_bar.dart';
import 'package:taskkmanager/ui/screens/forgotpas_email_verification.dart';
import 'package:taskkmanager/ui/screens/signup_screen.dart';
import 'package:taskkmanager/ui/utils/text_styles.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/app_elevated_button.dart';
import '../widgets/app_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get Started With', style: screenTitleTextStyle),
              const SizedBox(
                height: 24,
              ),
              AppTextFieldWidget(
                controller: TextEditingController(),
                hintText: 'Email',
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
              AppElevatedButton(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavBar()),
                      (route) => false);
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotpasEmailVerification(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUPScreen()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
