import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class MySettingsTile extends StatelessWidget {
  final IconData leading;
  final IconData tailing;
  final String title;
  final Function()? onTap;

  const MySettingsTile(
      {super.key,
      required this.leading,
      required this.tailing,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          textColor: AppColors.accentColor,
          iconColor: AppColors.secondaryColor,
          leading: Icon(
            leading,
            size: 30,
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          trailing: Icon(
            tailing,
            size: 30,
          ),
        ),
      ),
    );
  }
}
