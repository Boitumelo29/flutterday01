import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> food = ["Pizza", "Burger", "Chips", "Chicken", "Ribs"];

  int currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("What would you like to eat"),
                Text(food[currentIndex]),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      updateIndex();
                    },
                    child: const Text("Randomize"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(food.length);
//we used set state so that flutter knows we updated its index
    setState(() {
      currentIndex = index;
    });
  }
}

///notes
//statful widget will be able to remember any user input and values that may change
// is an abstract class