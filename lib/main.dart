import 'dart:math';

import 'package:flutter/material.dart';

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
      home: const ShuffleSongWidget(),
    );
  }
}

const albumCoverList = [
  "assets/images/feast.jpg",
  "assets/images/hindia.jpeg",
  "assets/images/lomba-sihir.jpg",
];

const songTitleList = [
  "Tarot - Feast.",
  "Cincin - Hindia",
  "Ribuan Memory - Lomba Sihir",
];

class ShuffleSongWidget extends StatefulWidget {
  const ShuffleSongWidget({super.key});

  @override
  State<ShuffleSongWidget> createState() =>
      _ShuffleSongWidgetState();
}

class _ShuffleSongWidgetState
    extends State<ShuffleSongWidget> {
  int _currentIndex = 0;

  void _shuffleSong() {
    Random random = Random();
    int randomIndex = random.nextInt(3);
    setState(() {
      _currentIndex = randomIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/spotify.jpg",
                  width: 48,
                  height: 48,
                ),
                const SizedBox(width: 4),
                const Text(
                  "Spotify",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                ),
                padding: EdgeInsets.all(10),
                height: 200,
                width: 200,
                child: Column(
                  children: [
                    Image.asset(
                      albumCoverList[_currentIndex],
                      width: 140,
                      height: 140,
                    ),
                    SizedBox(height: 10),
                    Text(
                      songTitleList[_currentIndex],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: IconButton(
                onPressed: _shuffleSong,
                icon: const Icon(
                  Icons.shuffle_on_rounded,
                  color: Colors.deepPurple,
                  size: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
