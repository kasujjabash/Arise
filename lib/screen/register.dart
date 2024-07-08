import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/my_button.dart';
import 'package:flutter/material.dart';

import '../cmponets/my_textfield.dart';

class Register extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo
                const Center(
                  child: Icon(
                    Icons.church_outlined,
                    size: 80,
                    color: AppColors.secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // signIn text
                const Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Lets creat an account for you!',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.accentColor,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                // Email TextField
                MyTextField(
                  prefixIcon: Icons.email,
                  controller: emailController,
                  hintText: 'Enter your email',
                ),

                // password TextField
                MyTextField(
                  prefixIcon: Icons.lock,
                  controller: passwordController,
                  hintText: 'Enter your password',
                ),

                // confirmpassword TextField
                MyTextField(
                  prefixIcon: Icons.lock,
                  controller: confirmPasswordController,
                  hintText: 'Confirm password',
                ),
                const SizedBox(
                  height: 20,
                ),
                //button
                MyButton(text: "Register", onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
