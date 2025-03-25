import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/app_tiles/drawer_tiles.dart';
import 'package:flutter/material.dart';
import '../screen/get_in_touch.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                // contact us
                DrawerTiles(
                  icondata: Icons.phone,
                  drawertilename: 'Contact Us',
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    //navigate to the Get in tourch screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const GetInTouch()));
                  },
                ),

                //share app
                DrawerTiles(
                  icondata: Icons.share,
                  drawertilename: 'Share App',
                  onTap: () {
                    //pop the drawer
                    Navigator.pop(context);
                    //navigate to the sharing screen
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ShareScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
