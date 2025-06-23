import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomArrowBtn extends StatelessWidget {
  const CustomArrowBtn({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        foregroundColor: AppColors.kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Icon(Icons.arrow_forward, size: 20),
    );
  }
}
