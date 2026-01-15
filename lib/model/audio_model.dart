import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

class AudioModel {
  AudioModel({required this.name, required this.filePath, required this.tag});
  final String name;
  final String filePath;
  final MediaItem tag;
}

final Provider<List<AudioModel>> audioListProvider = Provider(
  (ref) => [
    AudioModel(
      name: 'Oceano',
      filePath: 'assets/audio/ocean.mp3',
      tag: MediaItem(id: "0", title: 'Oceano'),
    ),
    AudioModel(
      name: 'Chuva',
      filePath: 'assets/audio/rain.mp3',
      tag: MediaItem(id: "1", title: 'Chuva'),
    ),
  ],
);
