import 'package:flutter/material.dart';
import 'game_model.dart';

class Control extends StatefulWidget {
  const Control({super.key, required this.gameModel});

  final GameModel gameModel;

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(8.0), child: Text('1')),
        Expanded(
          child: Slider(
            value: widget.gameModel.current.toDouble(),
            onChanged: (newValue) {
              setState(() {
                widget.gameModel.current = newValue.toInt();
              });
            },
            min: 1.0,
            max: 100.0,
          ),
        ),
        const Padding(padding: EdgeInsets.all(8.0), child: Text('100')),
      ],
    );
  }
}
