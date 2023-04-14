import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.round, required this.totalScore});

  final int totalScore;
  final int round;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      const TextButton(
        onPressed: null,
        child: Text(
          'Start Over',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const <Widget>[
            Text('Score:'),
            Text('999999'),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const <Widget>[
            Text('Round:'),
            Text('999'),
          ],
        ),
      ),
      const TextButton(
        onPressed: null,
        child: Text(
          'Info',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    ]);
  }
}
