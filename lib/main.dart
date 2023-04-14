import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Bullseye',
    home: GamePage(),
  ));
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var _alertVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Hello World test',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          TextButton(
            onPressed: () {
              _alertVisible = true;
              _showAlert(context);
            },
            child: const Text(
              'Hit me!',
              style: TextStyle(color: Colors.blue),
            ),
          )
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
            content: const Text('This is my first pop-up.'),
            actions: <Widget>[okButton],
            elevation: 5,
          );
        });
  }
}
