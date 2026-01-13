import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sons_para_dormir/theme/colors.dart';
import 'package:sons_para_dormir/theme/paddings.dart';
import 'package:sons_para_dormir/theme/standard_text.dart';
import 'package:sons_para_dormir/view/shared/background_scaffold.dart';
import 'package:sons_para_dormir/view/shared/play_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setAsset('./assets/audio/ocean.mp3', preload: true);
    _player.setLoopMode(LoopMode.one);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      body: Container(
        color: AppColors.secondary,
        padding: const EdgeInsets.all(AppPaddings.defaultSize),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StandardBodyText(_player.playing.toString()),
            PlayerButton(player: _player),
          ],
        ),
      ),
    );
  }
}
