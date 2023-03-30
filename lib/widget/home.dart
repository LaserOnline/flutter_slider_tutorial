import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentValue.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 4,
              label: _currentValue.toString(),
              activeColor: Colors.black,
              thumbColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              }),
        ],
      ),
    );
  }
}
