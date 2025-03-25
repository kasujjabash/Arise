import 'package:arise/screen/settings.dart';
import 'package:flutter/material.dart';
import '../../Theme/app_colors.dart';
import '../../screen/my_profile.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            foregroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.background,
            title: const Text(
              'Profile',
            ),

            // app a bar buttom
            bottom: const TabBar(
                isScrollable: false,
                dividerColor: AppColors.accentColor,
                dividerHeight: .2,
                splashBorderRadius: BorderRadius.all(Radius.circular(10)),
                indicatorWeight: 5,
                indicatorColor: AppColors.secondaryColor,
                tabs: [
                  Tab(
                    child: Text(
                      "My Profile",
                      style:
                          TextStyle(color: AppColors.accentColor, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(color: AppColors.accentColor, fontSize: 16),
                    ),
                  )
                ]),
          ),
          body:  TabBarView(
            children: [const MyProfile(), Settings()],
          )),
    );
  }
}
