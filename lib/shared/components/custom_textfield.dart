import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.isObscured = false,
    this.enableSuggestions = false,
    this.autocorrect = false,
  });
  final String labelText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final bool isObscured;
  final bool enableSuggestions;
  final bool autocorrect;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isObscured,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
    );
  }
}
