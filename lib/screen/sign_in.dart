import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/my_button.dart';
import 'package:flutter/material.dart';

import '../cmponets/my_textfield.dart';
import 'register.dart';

class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignIn({super.key});

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
                  'Sign in',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome to a raise city church,',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.accentColor,
                  ),
                ),
                // you don't have an accout, register
                Row(

                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    // text button
                    TextButton(
                      onPressed: () {
                        //pop  the login screen
                        Navigator.pop(context);
                        //go the register page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(color: AppColors.secondaryColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Email TextField
                MyTextField(
                  prefixIcon: Icons.email,
                  controller: emailController,
                  hintText: 'Enter your email',
                ),

                // Email TextField
                MyTextField(
                  prefixIcon: Icons.lock,
                  controller: passwordController,
                  hintText: 'Enter your password',
                ),
                const SizedBox(
                  height: 20,
                ),
                //button
                MyButton(text: "Sign in", onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
