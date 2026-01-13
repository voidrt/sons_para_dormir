import 'package:flutter/material.dart';
import 'package:sons_para_dormir/theme/colors.dart';

class BackgroundScaffold extends StatelessWidget {
  const BackgroundScaffold({super.key, required this.body, this.appBar});

  final Widget body;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.black, AppColors.primary],
                begin: AlignmentGeometry.bottomCenter,
                end: AlignmentGeometry.topCenter,
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
