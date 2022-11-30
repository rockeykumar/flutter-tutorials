import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimerCountDown extends StatefulWidget {
  final int? counterValueInSeconds;
  final VoidCallback? callback;
  const TimerCountDown(
      {super.key, this.counterValueInSeconds = 179, this.callback});

  @override
  State<TimerCountDown> createState() =>
      _TimerCountDownState(counterValueInSeconds!);
}

class _TimerCountDownState extends State<TimerCountDown> {
  String minutesString = "03", secondString = "00";
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
          print("Counter for check: $_Counter");
          _Counter--;
        });
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("OTP Expired"),
              content:
                  Text("Generate new otp for mobile number verification...!"),
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
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${minutesString}:${secondString}",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
