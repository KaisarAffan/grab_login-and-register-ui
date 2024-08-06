// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grab_ui/register_page/register_page.dart';
import 'package:grab_ui/widget/primary_buttpn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(77, 188, 107, 1),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color.fromRGBO(68, 174, 90, 1),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 14),
              child: IconButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {},
              ),
            ),
            Container(
              width: 130,
              padding: EdgeInsets.only(top: 140, bottom: 15),
              child: Image.asset(
                'asset/image/Grab_Final_Master_Logo_2019_RGB_(white).png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Your everyday everything app",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Spacer(),
            primaryBtn(
              textBtn: "Continue with Facebook",
              appIcon: Image.asset('asset/image/facebook.png'),
              L: 20,
              R: 20,
              B: 10,
              onPressed: () {},
            ),
            primaryBtn(
              textBtn: "Continue with Google",
              appIcon: Image.asset('asset/image/search.png'),
              L: 20,
              R: 20,
              B: 20,
              onPressed: () {},
            ),
            Row(children: [
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                    child: Divider(
                      color: Colors.white,
                    )),
              ),
              Text(
                "or",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 25.0),
                    child: Divider(
                      color: Colors.white,
                    )),
              ),
            ]),
            primaryBtn(
              textBtn: "Continue with Mobile Number",
              appIcon: Image.asset('asset/image/phone-call.png'),
              L: 20,
              T: 20,
              R: 20,
              B: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
