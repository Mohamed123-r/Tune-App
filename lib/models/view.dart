import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class Model {
  final Color color;
  final String sound;

  const Model({
    required this.color,
    required this.sound,
  });

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
