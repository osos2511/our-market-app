import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({this.onTap, required this.text, super.key});
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
