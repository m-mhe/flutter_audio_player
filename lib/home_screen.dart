import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isPlaying = false;
  final _player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Audio Player'),
      ),
      body: Center(
        child: IconButton(
            onPressed: () async{
              if(_isPlaying){
                await _player.pause();
                _isPlaying = false;
                setState(() {});
              }else{
                await _player.play(AssetSource('Lazy Walk - Cheel.mp3',));
                _isPlaying = true;
                setState(() {});
              }
            },
            icon: Icon(_isPlaying
                ? Icons.pause_circle_filled_rounded
                : Icons.play_circle_fill_rounded, size: 70,)),
      ),
    );
  }
}
