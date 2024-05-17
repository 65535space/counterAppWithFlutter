import 'package:flutter/material.dart';
import 'sum_taps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  CounterAppState createState() => CounterAppState();
}

class CounterAppState extends State<CounterApp> {
  int _counter = 0;
  int _allCounter = 0;
  int _sumCounter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
    _sumCounter++;
    _allCounter++;
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
    _allCounter++;
    _sumCounter++;
  }

  void counterReset() {
    setState(() {
      _counter = 0;
    });
    _sumCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンターアプリ'),
      ),
      body: Center(
        child: Column(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: incrementCounter,
                    child: const Text("1プラスするよ"),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: decrementCounter,
                    child: const Text("1マイナスするよ"),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SumTaps(
                      toTalTapsThisTime: _sumCounter,
                      allCounter: _allCounter,
                    ),
                  ),
                );
              },
              child: const Text("今までに押した回数"),
            ),
            ElevatedButton(
              onPressed: counterReset,
              child: const Text("カウントリセット"),
            ),
          ],
        ),
      ),
    );
  }
}
