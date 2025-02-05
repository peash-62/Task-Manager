import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscuretext,
    this.obscureText, this.maxLines,
  });

  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final dynamic obscuretext;
  final int? maxLines;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ??1,
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}