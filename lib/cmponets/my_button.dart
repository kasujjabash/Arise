import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../Theme/app_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(text,
                style:
                    //  GoogleFonts.libreBaskerville(
                    // textStyle:
                    const TextStyle(
                        color: AppColors.accentColor,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: 1,
                        fontSize: 20))),
        // ),
      ),
    );
  }
}
