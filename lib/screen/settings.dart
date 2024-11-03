import 'package:arise/screen/get_in_touch.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Theme/app_colors.dart';
import '../cmponets/settings_tile.dart';
import 'about_our_church.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  final Uri toLaunch = Uri.parse('https://bashir-kasujja.onrender.com/');

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Sized box
              const SizedBox(
                height: 30,
              ),
              // Recommend
              MySettingsTile(
                onTap: () {},
                leading: Icons.recommend,
                title: 'Recommend',
                tailing: Icons.arrow_forward_ios,
              ),

              // Get in touch
              MySettingsTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GetInTouch())),
                leading: Icons.chat_bubble_outline_sharp,
                title: 'Get in touch',
                tailing: Icons.arrow_forward_ios,
              ),
              // About us
              MySettingsTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs())),
                leading: Icons.church_outlined,
                title: 'About our church',
                tailing: Icons.arrow_forward_ios,
              ),
            ],
          ),

          // Connect with the developer
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MySettingsTile(
              onTap: () => _launchInBrowser(toLaunch),
              leading: Icons.code,
              title: "Contact the developer",
              tailing: Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
    );
  }
}
