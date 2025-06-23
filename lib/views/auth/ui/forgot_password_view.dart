import 'package:flutter/material.dart';
import 'package:our_market/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/app_colors.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Enter Your Email To Reset Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Card(
                margin: EdgeInsets.all(24),
                color: AppColors.kWhiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CustomTextFormField(labelText: 'Email'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kPrimaryColor,
                          foregroundColor: AppColors.kWhiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text('Submit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
