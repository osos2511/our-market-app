import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/views/auth/ui/forgot_password_view.dart';
import 'package:our_market/views/auth/ui/widgets/custom_arrow_button.dart';
import 'package:our_market/views/auth/ui/widgets/custom_text_button.dart';
import 'package:our_market/views/auth/ui/widgets/custom_text_field.dart';

import '../../../core/navigate_to.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome To Our Market',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      CustomTextFormField(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomTextButton(
                            text: 'Forgot Password?',
                            onTap: () {
                              navigateTo(context,ForgotPasswordView());
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomArrowBtn(
                            onPressed: () {
                              // Handle login action
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login with Google",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomArrowBtn(
                            onPressed: () {
                              // Handle login action
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          CustomTextButton(
                            text: 'Sign Up',
                            onTap: () {
                              // Handle sign up action
                            },
                          ),
                        ],
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
