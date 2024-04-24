import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.background, boxShadow: [
        //darker shadow on the bottom right
        BoxShadow(
          color: Color.fromARGB(255, 20, 87, 22),
          blurRadius: 15,
          offset: Offset(4, 4),
        ),
        //lighter shadow on the top left
        BoxShadow(
          color: Color.fromARGB(255, 20, 87, 22),
          blurRadius: 15,
          offset: Offset(-4, -4),
        )
      ]),
      child: child,
    );
  }
}
