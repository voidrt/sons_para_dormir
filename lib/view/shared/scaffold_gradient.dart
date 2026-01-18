import 'package:flutter/material.dart';
import 'package:sons_para_dormir/theme/colors.dart';

class ScaffoldWithBackgroundGradient extends StatelessWidget {
  const ScaffoldWithBackgroundGradient({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.black, AppColors.primary],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(child: body),
        ],
      ),
    );
  }
}
