import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: AppColors.background, boxShadow: [
        //darker shadow on the bottom right
        BoxShadow(
          color: Color.fromARGB(255, 42, 33, 107),
          blurRadius: 15,
          offset: Offset(4, 4),
        ),
        //lighter shadow on the top left
        BoxShadow(
          color: Color.fromARGB(255, 35, 24, 114),
          blurRadius: 15,
          offset: Offset(-4, -4),
        )
      ]),
      child: child,
    );
  }
}
