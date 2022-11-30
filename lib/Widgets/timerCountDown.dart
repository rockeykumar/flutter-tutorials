import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimerCountDown extends StatefulWidget {
  final int? counterValueInSeconds;
  const TimerCountDown({super.key, this.counterValueInSeconds = 180});

  @override
  State<TimerCountDown> createState() =>
      _TimerCountDownState(counterValueInSeconds!);
}

class _TimerCountDownState extends State<TimerCountDown> {
  String secondString = "00", minutesString = "00";
  late int _Counter;
  late Timer _timer;

  _TimerCountDownState(int counterValueInSeconds) {
    this._Counter = counterValueInSeconds;
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int minutes = (_Counter / 60).toInt();
      int seconds = (_Counter % 60).toInt();

      if (minutes < 10) {
        minutesString = '0${minutes}';
      } else {
        minutesString = minutes.toString();
      }
      if (seconds < 10) {
        secondString = '0${seconds}';
      } else {
        secondString = seconds.toString();
      }

      if (_Counter >= 0) {
        setState(() {
          _Counter--;
        });
      } else {
        // _Counter = 0;
        // print("Counter: $_Counter");
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Time Up"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("close"))
              ],
            );
          },
        );
        _timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${minutesString}:${secondString}",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
