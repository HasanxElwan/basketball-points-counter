// ignore_for_file: camel_case_types
import 'dart:html';
import 'package:basketball_points_counter/widget/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const pointCounter());
}

class pointCounter extends StatefulWidget {
  const pointCounter({Key? key}) : super(key: key);

  @override
  State<pointCounter> createState() => _pointCounterState();
}

class _pointCounterState extends State<pointCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 140),
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 350,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 140),
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(160, 50),
              ),
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
