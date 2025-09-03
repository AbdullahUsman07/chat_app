
import 'package:chat_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
  });

  final String title;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: Color(0xFF637C88)),
        filled: true,
        fillColor: const Color(0xFFF0F3F4),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: AppTextStyles.body.copyWith(
        color: Color(0xFF111518),
        fontSize: 16,
      ),
    );
  }
}