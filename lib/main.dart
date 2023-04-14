import 'package:bullseye/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'prompt.dart';
import 'control.dart';
import 'game_model.dart';

void main() {
  runApp(
    const BullseyeApp(),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class BullseyeApp extends StatelessWidget {
  const BullseyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    );
  }
}

class _GamePageState extends State<GamePage> {
  late GameModel _gameModel;

  @override
  void initState() {
    super.initState();
    _gameModel = GameModel(50);
  }

  var _alertVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Prompt(tartgetValue: 100),
          Control(gameModel: _gameModel),
          TextButton(
            onPressed: () {
              _alertVisible = true;
              _showAlert(context);
            },
            child: const Text(
              'Hit me!',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Score(totalScore: _gameModel.totalScore, round: _gameModel.round),
        ],
      )),
    );
  }

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          _alertVisible = false;
          print("Awesome! button pressed $_alertVisible");
        },
        child: const Text('Awesome!'));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Hello there!'),
            content: Text('The slider\'s value is ${_gameModel.current}.'),
            actions: <Widget>[okButton],
            elevation: 5,
          );
        });
  }
}
