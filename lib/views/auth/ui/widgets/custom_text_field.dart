import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.isSecure = false,
  });
  final String labelText;
  final Widget? suffixIcon;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kBordersideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
