import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscuretext,
    this.obscureText, this.maxLines, this.validator,
  });

  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final dynamic obscuretext;
  final int? maxLines;
  final Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ??1,
      validator: (value){
        if(validator != null){
         return validator !(value);
        }
        return null;
      },
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