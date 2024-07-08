import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "You are currently not signed in",
              style: TextStyle(color: AppColors.accentColor, fontSize: 18),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  SignIn(),
                  ),
                );
              },
              child: const Text(
                "Sign in",
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 18),
              ))
        ],
      ),
    );
  }
}
