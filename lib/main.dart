import 'package:flutter/material.dart';
import 'shuffle_song_screen.dart';

void main() {
  runApp(const ShuffleSongApp());
}

class ShuffleSongApp extends StatelessWidget {
  const ShuffleSongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shuffle Song App",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ShuffleSongScreen(),
    );
  }
}
