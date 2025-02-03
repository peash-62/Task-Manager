import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/screens/otp_verification_screen.dart';
import 'package:taskkmanager/ui/widgets/app_elevated_button.dart';
import 'package:taskkmanager/ui/widgets/app_text_field_widget.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../utils/text_styles.dart';

class ForgotpasEmailVerification extends StatelessWidget {
  const ForgotpasEmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Input Email Address',
                  style: screenTitleTextStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text('A six digit verification email will be send i your email',
                    style: screenSubTitleTextStyle),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                  hintText: 'Email Address',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(
                    child: const Text(
                      'Send verification pin',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpVerificationScreen(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 10,
                ),
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
    );
  }
}
