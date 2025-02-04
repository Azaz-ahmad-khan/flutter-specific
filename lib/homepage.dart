import 'dart:async';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int time = 5;
  countdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (time > 0) {
          time--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STILL LEARNING'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              time == 0 ? 'Done' : time.toString(),
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                countdown();
              },
              child: Text(
                'Start',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
