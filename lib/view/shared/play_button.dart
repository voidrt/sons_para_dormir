import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerButton extends StatelessWidget {
  const PlayerButton({super.key, required this.player});

  final AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: player.playerStateStream,
      builder: (context, snapshot) {
        final ProcessingState? playerState = snapshot.data?.processingState;
        final bool isPlaying = snapshot.data?.playing ?? false;
        final bool isReady = playerState == ProcessingState.ready;
        final IconData iconData = isPlaying ? Icons.pause : Icons.play_arrow;

        return IconButton(
          onPressed: isPlaying && isReady ? player.pause : player.play,
          icon: Icon(iconData, color: Colors.white, size: 40),
        );
      },
    );
  }
}
