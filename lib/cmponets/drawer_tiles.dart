import 'package:flutter/material.dart';

class DrawerTiles extends StatelessWidget {
  final String drawertilename;
  final IconData icondata;
  final Function()? onTap;
  const DrawerTiles(
      {super.key, required this.drawertilename, required this.icondata, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icondata,
          color: Colors.white,
        ),
        title: Text(
          drawertilename,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
