import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Search in Market',
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: Icon(Icons.search, color: AppColors.kWhiteColor),
            onPressed: () {},
          ),
        ),

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
