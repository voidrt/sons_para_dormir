import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sons_para_dormir/model/audio_model.dart';
import 'package:sons_para_dormir/theme/colors.dart';
import 'package:sons_para_dormir/theme/paddings.dart';
import 'package:sons_para_dormir/theme/standard_text.dart';
import 'package:sons_para_dormir/view/shared/audio_card.dart';
import 'package:sons_para_dormir/view/shared/play_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late AudioPlayer _player;
  late List<AudioModel> audioList;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setLoopMode(LoopMode.one);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    audioList = ref.watch(audioListProvider);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.black,
          title: StandardBodyText(
            'Sons Para Dormir',
            color: AppColors.onBackground,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.waves, color: AppColors.onBackground)),
              Tab(icon: Icon(Icons.cloud, color: AppColors.onBackground)),
              Tab(icon: Icon(Icons.plus_one, color: AppColors.onBackground)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AudioCard(player: _player, audio: audioList[0]),
            AudioCard(player: _player, audio: audioList[1]),
            AudioCard(player: _player, audio: audioList[1]),
          ],
        ),
      ),
    );
  }
}
