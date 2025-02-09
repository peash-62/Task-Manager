import 'package:flutter/material.dart';
import 'package:taskkmanager/data/network_utils.dart';
import 'package:taskkmanager/data/urls.dart';
import 'package:taskkmanager/ui/screens/bottom_nav_bar.dart';
import 'package:taskkmanager/ui/screens/forgotpas_email_verification.dart';
import 'package:taskkmanager/ui/screens/signup_screen.dart';
import 'package:taskkmanager/ui/utils/snackbar_message.dart';
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
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Get Started With', style: screenTitleTextStyle),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                  controller: _emailETController,
                  hintText: 'Email',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  obscureText: true,
                  hintText: 'Password',
                  controller: _passwordETController,
                  validator: (value) {
                    if ((value?.isEmpty ?? true) &&
                        ((value?.length ?? 0) < 6)) {
                      return 'enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AppElevatedButton(
                  onTap: () async {
                    if (_formkey.currentState!.validate()) {
                      final result =
                          await NetworkUtils().postMethod(Urls.loginUrl,
                          body: {
                            'email' : _emailETController.text.trim(),
                            'password' : _passwordETController.text.trim()
                          },
                            onUnauthorized: (){
                            showSnackBarMessage(context, 'username or password invalid',true);
                            }
                          
                          );
                      if (result != null && result['status'] == 'success') {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavBar()),
                            (route) => false);
                      }
                    }
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
                          builder: (context) =>
                              const ForgotpasEmailVerification(),
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
      ),
    );
  }
}
