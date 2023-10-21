import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sleep Improvement',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SleepImprovementApp(),
    );
  }
}

class SleepImprovementApp extends StatefulWidget {
  @override
  _SleepImprovementAppState createState() => _SleepImprovementAppState();
}

class _SleepImprovementAppState extends State<SleepImprovementApp> {
  bool _isSleeping = false;

  void _startSleep() {
    setState(() {
      _isSleeping = true;
    });
    // Start sleep tracking logic here
  }

  void _stopSleep() {
    setState(() {
      _isSleeping = false;
    });
    // Stop sleep tracking logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sleep Improvement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isSleeping)
              ElevatedButton(
                onPressed: _stopSleep,
                child: Text('Stop Sleep Tracking'),
              )
            else
              ElevatedButton(
                onPressed: _startSleep,
                child: Text('Start Sleep Tracking'),
              ),
            SizedBox(height: 20),
            if (_isSleeping) Text('Sleeping...') else Text('Not Sleeping'),
          ],
        ),
      ),
    );
  }
}
