import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sons_para_dormir/model/audio_model.dart';
import 'package:sons_para_dormir/theme/colors.dart';
import 'package:sons_para_dormir/theme/paddings.dart';
import 'package:sons_para_dormir/theme/standard_text.dart';
import 'package:sons_para_dormir/view/shared/play_button.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({super.key, required this.player, required this.audio});

  final AudioPlayer player;
  final AudioModel audio;

  @override
  Widget build(BuildContext context) {
    player.setAudioSource(
      AudioSource.asset(audio.filePath, tag: audio.tag),
      preload: true,
    );

    return Stack(
      alignment: AlignmentGeometry.center,
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
        Container(
          color: AppColors.secondary,
          padding: const EdgeInsets.all(AppPaddings.defaultSize),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StandardBodyText(
                audio.name,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              PlayerButton(player: player),
            ],
          ),
        ),
      ],
    );
  }
}
