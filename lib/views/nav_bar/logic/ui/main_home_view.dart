import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/views/favourites/ui/favourites_view.dart';
import 'package:our_market/views/home/ui/home_view.dart';
import 'package:our_market/views/profile/ui/profile_view.dart';
import 'package:our_market/views/store/ui/store_view.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({Key? key}) : super(key: key);
  final List<Widget> views = [
    HomeView(),
    StoreView(),
    FavouritesView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: views[2]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.kWhiteColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          child: GNav(
            rippleColor:
                AppColors.kPrimaryColor, // tab button ripple color when pressed
            hoverColor: AppColors.kPrimaryColor, // tab button hover color
            duration: Duration(milliseconds: 400), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: AppColors.kGreyColor, // unselected icon color
            activeColor: AppColors.kWhiteColor, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                AppColors.kPrimaryColor, // selected tab background color
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ), // navigation bar padding
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.store, text: 'Store'),
              GButton(icon: Icons.favorite, text: 'Favorites'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
