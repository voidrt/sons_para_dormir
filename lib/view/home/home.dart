import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sons_para_dormir/model/audio_model.dart';
import 'package:sons_para_dormir/view/shared/audio_card.dart';
import 'package:sons_para_dormir/view/shared/scaffold_gradient.dart';

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

    return LayoutBuilder(
      builder: (context, constraints) {
        return DefaultTabController(
          length: 4,
          child: ScaffoldWithBackgroundGradient(
            body: Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,
                  child: TabBarView(
                    children: [
                      AudioCard(player: _player, audio: audioList[0]),
                      AudioCard(player: _player, audio: audioList[1]),
                      AudioCard(player: _player, audio: audioList[2]),
                      AudioCard(player: _player, audio: audioList[2]),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: constraints.maxHeight / 10,

                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.waves)),
                      Tab(icon: Icon(LineIcons.cloudWithRain)),
                      Tab(icon: Icon(LineIcons.fire)),
                      Tab(icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
