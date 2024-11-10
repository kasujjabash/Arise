import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class GetInTouchTile extends StatelessWidget {
  final IconData leading;
  final IconData tailing;
  final String title;
  final String subtitle;
  final Function()? onTap;

  const GetInTouchTile({
    super.key,
    required this.leading,
    required this.tailing,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ListTile(
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
              subtitle: Text(
                subtitle,
                // style: const TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                tailing,
                size: 30,
              ),
            ),
            // sized box
            const SizedBox(
              height: 10,
            ),
            //  Divider
            const Divider(
              indent: 2,
              height: .5,
              endIndent: 2,
              color: AppColors.secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
