import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylphoneView extends StatefulWidget {
  const XylphoneView({super.key});

  @override
  State<XylphoneView> createState() => _XylphoneViewState();
}

class _XylphoneViewState extends State<XylphoneView> {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blueAccent,
    Colors.pink,
    Colors.purple,
  ];

  List audio = [
    "note1.wav",
    "note2.wav",
    "note3.wav",
    "note4.wav",
    "note5.wav",
    "note6.wav",
    "note7.wav",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          colors.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  AudioPlayer().play(
                    AssetSource(
                      audio[index],
                    ),
                  );
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: colors[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
