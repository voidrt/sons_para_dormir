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
      tag: MediaItem(
        id: "0",
        title: 'Som do Mar',
        artUri: Uri.parse(
          'https://c.pxhere.com/images/34/70/b834aec2bb072674490774dd74a9-1593233.jpg!d',
        ),
      ),
    ),
    AudioModel(
      name: 'Chuva',
      filePath: 'assets/audio/rain.mp3',
      tag: MediaItem(
        id: "1",
        title: 'Som de Chuva',
        artUri: Uri.parse(
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F459451%2Fpexels-photo-459451.jpeg%3Fcs%3Dsrgb%26dl%3Dblack-and-white-clear-cool-459451.jpg%26fm%3Djpg&f=1&nofb=1&ipt=d9027287a8a9c359035b66421ee898423255979999dac9bce4ad794dc820d7b7",
        ),
      ),
    ),
    AudioModel(
      filePath: 'assets/audio/fireplace.mp3',
      name: 'Lareira',
      tag: MediaItem(
        id: '2',
        title: "Som de lareira",
        artUri: Uri.parse(
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F266604%2Fpexels-photo-266604.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-pixabay-266604.jpg%26fm%3Djpg&f=1&nofb=1&ipt=ebb29165d9e022c7b10176990fc4dc169222bca8201cdca187788cd910fa6b4f",
        ),
      ),
    ),
  ],
);
