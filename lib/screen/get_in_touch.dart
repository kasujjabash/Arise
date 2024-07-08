import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/get_in_touch_tile.dart';
import 'package:flutter/material.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
        title: const Text('Get in touch'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "How can we help you? ",
              style: TextStyle(fontSize: 20, color: AppColors.secondaryColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "You can reach out to us and we will respond, call us if you want to receive salvation, or share testmony  ",
              style: TextStyle(fontSize: 18, color: AppColors.accentColor),
            ),
            const SizedBox(
              height: 20,
            ),

            // call us
            GetInTouchTile(
              leading: Icons.phone,
              tailing: Icons.arrow_forward_ios,
              title: 'Call us',
              subtitle: '0707268485',
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            // Email us
            GetInTouchTile(
              leading: Icons.email,
              tailing: Icons.arrow_forward_ios,
              title: 'Email us',
              subtitle: 'info@arisechurch.com',
              onTap: () {},
            ),

            const SizedBox(
              height: 10,
            ),
            // Email us
            GetInTouchTile(
              leading: Icons.laptop_outlined,
              tailing: Icons.arrow_forward_ios,
              title: 'Vist our website',
              subtitle: 'www.arisecommunitychurch.com',
              onTap: () {},
            ),

            // like us on Facebook
            GetInTouchTile(
              leading: Icons.facebook_rounded,
              tailing: Icons.arrow_forward_ios,
              title: 'Like us on facebook',
              subtitle: 'www.facebook/araiscitychurch/',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
