import 'package:flutter/material.dart';

class SumTaps extends StatelessWidget {
  const SumTaps(
      {super.key, required this.toTalTapsThisTime, required this.allCounter});
  final int toTalTapsThisTime;
  final int allCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンターアプリ'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 54, 231, 244),
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "今回の総タップ数:",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  toTalTapsThisTime.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "今までの総タップ数:",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  allCounter.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
