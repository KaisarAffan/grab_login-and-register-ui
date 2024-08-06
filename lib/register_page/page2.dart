// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:grab_ui/register_page/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  late Timer _timer;
  int _start = 60;
  final String _myPin = "123456";

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start <= 0) {
        _timer.cancel();
      }
      setState(() {
        _start--;
      });
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '${_twoDigitFormat(minutes)}:${_twoDigitFormat(secs)}';
  }

  String _twoDigitFormat(int number) {
    return number.toString().padLeft(2, '0');
  }

  void _checkPin(BuildContext context, String pin) {
    if (pin == _myPin) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page3()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Incorrect PIN')),
      );
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(text: 'Enter the 6-digit code sent to '),
                    TextSpan(
                        text: '+62 *********94 ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'by '),
                    TextSpan(
                        text: 'WhatsApp ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: SizedBox(
                height: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '000000',
                    hintStyle: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(235, 239, 241, 1),
                    ),
                  ),
                  obscureText: true,
                  onSubmitted: (pin) {
                    _checkPin(context, pin);
                  },
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.only(left: 24),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Didn't get code?",
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 24),
              alignment: Alignment.bottomLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Get new code or send by ',
                      style: TextStyle(
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                    ),
                    TextSpan(
                      text: 'SMS ',
                      style: TextStyle(
                          color: Color.fromRGBO(212, 212, 212, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'in ',
                      style: TextStyle(
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                    ),
                    TextSpan(
                      text: _formatTime(_start),
                      style: TextStyle(
                        color: Color.fromRGBO(212, 212, 212, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
