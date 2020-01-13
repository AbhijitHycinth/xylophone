import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudibleButton extends StatelessWidget {
  Color _color;
  String _asset;
  static AssetsAudioPlayer _audioPlayer;

  AudibleButton(
    Color color,
    String asset,
  ) {
    _color = color;
    _asset = asset;
    if (_audioPlayer == null) {
      _audioPlayer = new AssetsAudioPlayer();
    }
  }

  void _playAudio() {
    _audioPlayer.open(AssetsAudio(folder: "assets/", asset: _asset));
    _audioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    print(this._color);
    return Material(
      color: this._color,
      child: InkWell(
        onTap: _playAudio,
        enableFeedback: false,
      ),
    );
  }
}
