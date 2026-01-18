import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      name: 'Mar',
      filePath: 'assets/audio/ocean.mp3',
      tag: MediaItem(id: "0", title: 'Som do Mar'),
    ),
    AudioModel(
      name: 'Chuva',
      filePath: 'assets/audio/rain.mp3',
      tag: MediaItem(id: "1", title: 'Som de Chuva'),
    ),
    AudioModel(
      filePath: 'assets/audio/fireplace.mp3',
      name: 'Lareira',
      tag: MediaItem(id: '2', title: 'Som de Lareira'),
    ),
  ],
);
