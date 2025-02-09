import 'package:flutter/material.dart';
import 'package:taskkmanager/data/network_utils.dart';
import 'package:taskkmanager/ui/utils/snackbar_message.dart';
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
  final TextEditingController emailETController = TextEditingController();
  final TextEditingController firstNameETController = TextEditingController();
  final TextEditingController lastNameETController = TextEditingController();
  final TextEditingController mobileETController = TextEditingController();
  final TextEditingController passwordETController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
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
                      controller: emailETController,
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
                      hintText: 'First Name',
                      controller: firstNameETController,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Last Name',
                      controller: lastNameETController,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextFieldWidget(
                      hintText: 'Mobile',
                      controller: mobileETController,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'enter your mobile number';
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
                      controller: passwordETController,
                      validator: (value) {
                        if ((value?.isEmpty ?? true) &&
                            ((value?.length ?? 0) < 6)) {
                          return 'enter minimum 6 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppElevatedButton(
                      child: Text('Sign Up'),
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          final result = await NetworkUtils().postMethod(
                            'https://task.teamrabbil.com/api/v1/registration',
                            body: {
                              'email': emailETController.text.trim(),
                              'mobile': mobileETController.text.trim(),
                              'password': passwordETController.text,
                              'firstName': firstNameETController.text.trim(),
                              'lastName': lastNameETController.text.trim()
                            },
                          );
                          print(result);
                          if (result != null && result['status'] == 'success') {
                            emailETController.clear();
                            mobileETController.clear();
                            passwordETController.clear();
                            firstNameETController.clear();
                            lastNameETController.clear();
                            showSnackBarMessage(context, 'Registration Successful');
                          } else {
                            showSnackBarMessage(context, 'Registration failed try again',true);
                          }
                        }
                      },
                    ),
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
        ),
      ),
    );
  }
}
