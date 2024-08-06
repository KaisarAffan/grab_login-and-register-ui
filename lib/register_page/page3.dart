// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(23, 30, 0, 10),
              child: Text(
                "Name",
                style: TextStyle(
                    color: Color.fromRGBO(98, 94, 94, 0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              child: SizedBox(
                width: 380,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'What should people call you?',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 191, 191, 191),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(17, 0, 17, 10),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Color.fromRGBO(112, 112, 112, 1), fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            "By countinuing, you confirm you've read and agree to our "),
                    TextSpan(
                        text: 'Terms of Service ',
                        style:
                            TextStyle(color: Color.fromRGBO(48, 109, 200, 1))),
                    TextSpan(text: "and "),
                    TextSpan(
                        text: 'Privacy Policy ',
                        style:
                            TextStyle(color: Color.fromRGBO(48, 109, 200, 1))),
                    TextSpan(
                        text:
                            "on how we collect, use, disclose, and process your personal data "),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 60.0,
              margin: EdgeInsets.fromLTRB(25, 25, 25, 35),
              child: ElevatedButton(
                onPressed: null,
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Color.fromRGBO(179, 234, 196, 1),
                  disabledForegroundColor: Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: Color.fromARGB(255, 68, 174, 90),
                  foregroundColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
