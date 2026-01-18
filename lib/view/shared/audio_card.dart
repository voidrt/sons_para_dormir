import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sons_para_dormir/model/audio_model.dart';
import 'package:sons_para_dormir/theme/colors.dart';
import 'package:sons_para_dormir/theme/paddings.dart';
import 'package:sons_para_dormir/theme/standard_text.dart';
import 'package:sons_para_dormir/view/shared/play_button.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({
    super.key,
    required this.player,
    required this.audio,
    required this.constraints,
    this.color,
  });

  final AudioPlayer player;
  final AudioModel audio;
  final BoxConstraints constraints;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    player.setAudioSource(
      AudioSource.asset(audio.filePath, tag: audio.tag),
      preload: true,
    );

    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight / 2,
      padding: const EdgeInsets.all(AppPaddings.medium),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color ?? AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: AppPaddings.big),
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
    );
  }
}
