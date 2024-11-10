import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  // final IconData;
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        style: const TextStyle(color: AppColors.accentColor),
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: AppColors.accentColor),
            // fillColor: Colors.grey,
            focusedBorder: const OutlineInputBorder(
                //this is gives the boarder side when the user is typing
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            prefixIcon: Icon(
              prefixIcon,
              color: AppColors.secondaryColor,
            ),
            hintText: hintText),
      ),
    );
  }
}
