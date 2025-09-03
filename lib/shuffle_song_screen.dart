import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';

class ShuffleSongScreen extends StatefulWidget {
  const ShuffleSongScreen({super.key});

  @override
  State<ShuffleSongScreen> createState() =>
      _ShuffleSongScreenState();
}

class _ShuffleSongScreenState
    extends State<ShuffleSongScreen> {
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
                      ShuffleSongConstants
                          .albumCoverList[_currentIndex],
                      width: 140,
                      height: 140,
                    ),
                    SizedBox(height: 10),
                    Text(
                      ShuffleSongConstants
                          .songTitleList[_currentIndex],
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
