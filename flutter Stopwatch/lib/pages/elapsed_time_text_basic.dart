import 'package:flutter/material.dart';

class ElapsedTimeTextBasic extends StatelessWidget {
  final Duration elapsed;
  const ElapsedTimeTextBasic({Key? key, required this.elapsed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;

    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    return Text(
      "$minutesStr:$secondsStr:$hundredsStr",
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 40),
    );
  }
}