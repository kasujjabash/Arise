import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/drawer_tiles.dart';

import 'package:flutter/material.dart';

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
                    //Open display a dialog
                  },
                ),

                //share app

                DrawerTiles(
                  icondata: Icons.share,
                  drawertilename: 'Share App',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
