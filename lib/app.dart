import 'package:flutter/material.dart';
import 'package:flutter_audio_player/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Audio Player',
      home: HomeScreen(),
    );
  }
}
