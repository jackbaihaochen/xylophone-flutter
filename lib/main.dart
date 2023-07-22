import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> playNote({int noteNumber = 1}) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.red,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.yellow,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.green,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.indigo,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    color: Colors.purple,
                  ),
                  onPressed: () {
                    playNote(noteNumber: 7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
