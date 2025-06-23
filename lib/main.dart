import 'package:flutter/material.dart';
import 'package:our_market/app_colors.dart';
import 'package:our_market/views/auth/ui/login_view.dart';

void main() {
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
      title: 'Our Market',
      home: const LoginView(),
    );
  }
}
